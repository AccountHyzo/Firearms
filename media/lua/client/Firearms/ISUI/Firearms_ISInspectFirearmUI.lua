require "ISUI/ISCollapsableWindow"
require "ISUI/ISPanel"
require "ISUI/ISRichTextPanel"
require "ISUI/ISToolTip"
require "TimedActions/ISTimedActionQueue"

ISInspectFirearmUI = ISCollapsableWindow:derive("ISInspectFirearmUI")
ISInspectFirearmUI.windows = {}
ISInspectFirearmUI.ghs = " <RGB:" .. getCore():getGoodHighlitedColor():getR() .. "," .. getCore():getGoodHighlitedColor():getG() .. "," .. getCore():getGoodHighlitedColor():getB() .. "> "
ISInspectFirearmUI.bhs = " <RGB:" .. getCore():getBadHighlitedColor():getR() .. "," .. getCore():getBadHighlitedColor():getG() .. "," .. getCore():getBadHighlitedColor():getB() .. "> "

function ISInspectFirearmUI:createChildren()
	ISCollapsableWindow.createChildren(self)
	self.panel = ISToolTip:new()
	self.panel.followMouse = false
	self.panel:initialise()
	self:setItem(self.item)
	self:addView(self.panel)
end

function ISInspectFirearmUI:update()
	ISCollapsableWindow.update(self)

	self:setWidth(self.panel:getWidth())
	self:setHeight(self:titleBarHeight() + self.panel:getHeight())
  if not self.item:isRanged() then
  self:close();
  end
end

function ISInspectFirearmUI:drawItemDetails(item, y, xoff, yoff, red)

    if item == nil then
        return;
    end

--~ 	print("renderdetail");
--~ 	print(red);
	local hdrHgt = self.headerHgt
	local top = hdrHgt + y * self.itemHgt + yoff
    local hc = getCore():getGoodHighlitedColor()
    local fgBar = {r=hc:getR(), g=hc:getG(), b=hc:getB(), a=1}
	local fgText = {r=0.6, g=0.8, b=0.5, a=0.6}
	if red then fgText = {r=0.0, g=0.0, b=0.5, a=0.7} end
	if instanceof(item, "HandWeapon") then
		local text = getText("IGUI_invpanel_Condition") .. ":"
		self:drawTextAndProgressBar(text, item:getCondition() / item:getConditionMax(), xoff, top, fgText, fgBar)
   else
		self:drawText(item:getName(), 40 + 30 + xoff, top + (self.itemHgt - self.fontHgt) / 2, fgText.a, fgText.r, fgText.g, fgText.b, self.font);
   end
end

function ISInspectFirearmUI:setItem(item)
	self.item = item
	self.panel:setName(item:getDisplayName())
end

function ISInspectFirearmUI:calcProgressPositions()
	self.progressX = (self.width - self.progressWidth) / 2
end

function ISInspectFirearmUI:render()
  ISCollapsableWindow.render(self)

	self.progressY = self.height - 8 - self.progressHeight;
  local y = self.progressY;
	local redDetail = false;
	local yoff = 0;
	self:drawItemDetails(self.item, y, self.progressX, yoff, redDetail);
  --self:drawBar(self.progressX, y, self.progressWidth, self.progressHeight, math.floor(self.item.getAge()) / math.floor(self.item:getOffAgeMax()), true)
end

function ISInspectFirearmUI:drawTextAndProgressBar(text, fraction, xoff, top, fgText, fgBar)
	self:drawText(text, 40 + 30 + xoff, top + (self.itemHgt - self.fontHgt) / 2, fgText.a, fgText.r, fgText.g, fgText.b, self.font)
	local textWid = getTextManager():MeasureStringX(self.font, text)
	self:drawProgressBar(40 + math.max(120, 30 + textWid + 20) + xoff, top+(self.itemHgt/2)-1, 100, 2, fraction, fgBar)
end

function ISInspectFirearmUI:drawBar(x, y, width, height, percent, highGood)
	local color = ColorInfo.new(0, 0, 0, 1)
	if highGood then
		getCore():getBadHighlitedColor():interp(getCore():getGoodHighlitedColor(), percent, color);
	else
		getCore():getGoodHighlitedColor():interp(getCore():getBadHighlitedColor(), percent, color);
	end
	local tempColor = {r=color:getR(), g=color:getG(), b=color:getB(), a=1}
	self:drawProgressBar(x, y, width, height, percent, tempColor)
end

function ISInspectFirearmUI:onGainJoypadFocus(joypadData)
	self.drawJoypadFocus = true
end

function ISInspectFirearmUI:onJoypadDown(button)
	if button == Joypad.BButton then
		self:removeFromUIManager()
		setJoypadFocus(self.playerNum, nil)
	end
end

function ISInspectFirearmUI:close()
	self:removeFromUIManager()
end

function ISInspectFirearmUI:onInventoryFontChanged()
	local font = getCore():getOptionInventoryFont()
	if font == "Large" then
		self.font = UIFont.Large
	elseif font == "Small" then
		self.font = UIFont.Small
	else
		self.font = UIFont.Medium
	end
	self.fontHgt = getTextManager():getFontFromEnum(self.font):getLineHeight()
	self.itemHgt = math.ceil(math.max(18, self.fontHgt) * self.zoom)
    self.texScale = math.min(32, (self.itemHgt - 2)) / 32

    self.contextButton1:setFont(self.font)
    self.contextButton2:setFont(self.font)
    self.contextButton3:setFont(self.font)
    self.contextButton1:setHeight(self.itemHgt)
    self.contextButton2:setHeight(self.itemHgt)
    self.contextButton3:setHeight(self.itemHgt)
end

function ISInspectFirearmUI:new(x, y, character, item)
	local playerNum = character:getPlayerNum()
	local width = 320
	local height = 16 + 64 + 16 + 16
	if x == -1 then
		x = getPlayerScreenLeft(playerNum) + (getPlayerScreenWidth(playerNum) - width) / 2
	end
	local o = ISCollapsableWindow:new(x, y, width, height);
	setmetatable(o, self);
	self.__index = self;
	o.character = character;
	o.playerNum = playerNum;
	o.item = item;
	o.title = item:getDisplayName();
	local font = getCore():getOptionInventoryFont()
	if font == "Large" then
		o.font = UIFont.Large
	elseif font == "Small" then
		o.font = UIFont.Small
	else
		o.font = UIFont.Medium
	end
    if zoom > 1.5 then
        o.font = UIFont.Large;
    end
    o.fontHgt = getTextManager():getFontFromEnum(o.font):getLineHeight()
    o.itemHgt = math.ceil(math.max(18, o.fontHgt) * o.zoom)
    o.texScale = math.min(32, (o.itemHgt - 2)) / 32
  o.borderColor = {r=0.4, g=0.4, b=0.4, a=1};
	o.backgroundColor = {r=0, g=0, b=0, a=0.8};
  o.progressWidth = 100;
	o.progressHeight = 10;
  o:calcProgressPositions();
	o:setResizable(false);
	return o;
end
