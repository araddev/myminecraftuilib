-- Toggles
MainToggled = true
SettingsToggled = false
Eagle = false

-- ColorPallete
Background = Color3.fromHex("#121118")
Frontground = Color3.fromHex("#1c1b23")
Foreground = Color3.fromHex("#7a7693")

-- Instances
TweenService = game:GetService("TweenService")
gui = Instance.new("ScreenGui")
Frame = Instance.new("Frame")
Title = Instance.new("TextLabel")
HomeIcon = Instance.new("ImageLabel")
SettingsIcon = Instance.new("ImageLabel")
button = Instance.new("TextButton")
button1 = Instance.new("TextButton")
Items = Instance.new("Frame")
ItemsTopbar = Instance.new("Frame")
ItemsTopbarBottom = Instance.new("Frame")
ItemsList = Instance.new("Frame")
UIListLayout = Instance.new("UIListLayout")
ItemsTitle = Instance.new("TextLabel")
UIListLayout1 = Instance.new("UIListLayout")
ItemsList1 = Instance.new("Frame")

HomeButtonSelection =  Instance.new("Frame")
SettingsButtonSelection =  Instance.new("Frame")



-- Properties
Frame.CornerRadius = 9
Frame.BorderSizePixel = 0
Frame.BorderColor3 = Frontground
Frame.BackgroundColor3 = Background
Frame.Size = UDim2.new(0, 220, 0, 30)
Frame.HorizontalAlignment = "Center"
Frame.VerticalAlignment = "Bottom"
Frame.Position = UDim2.new(0, 0, 0, -30)

button.VerticalAlignment = "Center"
button.HorizontalAlignment = "Right"
button.Size = UDim2.new(0, 17, 0, 17)
button.BackgroundColor3 = Frontground
button.Position = UDim2.new(0, -7, 0, 0)
button.CornerRadius = 5
button.BorderSizePixel = 0
HomeIcon.Size = UDim2.new(0, 10, 0, 12)
HomeIcon.HorizontalAlignment = "Center"
HomeIcon.VerticalAlignment = "Center"
HomeIcon.Image = "https://cdn.discordapp.com/attachments/695925843834306592/1062635130562293811/TargetIcon2.png"
HomeIcon.ImageTransparency = 0
HomeIcon.BackgroundTransparency = 1
button.MouseButton1Click:Connect(function()
    if MainToggled == false then
        ItemsTitle.Text = "Ghost"
        local SelectionTween = TweenService:Create(HomeButtonSelection, tweenInfo, {Size = UDim2.new(0, 12, 0, 2)})
        SelectionTween:Play()
        local SettingsSelectionUnTween = TweenService:Create(SettingsButtonSelection, tweenInfo, {Size = UDim2.new(0, 0, 0, 2)})
        SettingsSelectionUnTween:Play()
        SettingsToggled = false
        MainToggled = true
        ItemsList1.Visible = false
        ItemsList.Visible = true
    end
end)
button.MouseEnter:Connect(function()
    if MainToggled == false then
        HoverTween = TweenService:Create(HomeButtonSelection, tweenInfo, {Size = UDim2.new(0, 8, 0, 2)})
        HoverTween:Play()
    end
end)
button.MouseLeave:Connect(function()
if MainToggled == false then
    HoverTween1 = TweenService:Create(HomeButtonSelection, tweenInfo, {Size = UDim2.new(0, 0, 0, 2)})
    HoverTween1:Play()
    end
end)

button1.VerticalAlignment = "Center"
button1.HorizontalAlignment = "Right"
button1.Size = UDim2.new(0, 17, 0, 17)
button1.BackgroundColor3 = Frontground
button1.Position = UDim2.new(0, -27, 0, 0)
button1.CornerRadius = 5
button1.BorderSizePixel = 0
SettingsIcon.Size = UDim2.new(0, 12, 0, 12)
SettingsIcon.HorizontalAlignment = "Center"
SettingsIcon.VerticalAlignment = "Center"
SettingsIcon.Image = "https://cdn.discordapp.com/attachments/695925843834306592/1062634948445614121/BlatantIcon.png"
SettingsIcon.ImageTransparency = 0
SettingsIcon.BackgroundTransparency = 1

button1.MouseButton1Click:Connect(function()
    if SettingsToggled == false then
        local HomeSelectionUntween = TweenService:Create(HomeButtonSelection, tweenInfo, {Size = UDim2.new(0, 0, 0, 2)})
        local SettingsSelectionTween = TweenService:Create(SettingsButtonSelection, tweenInfo, {Size = UDim2.new(0, 12, 0, 2)})
        SettingsSelectionTween:Play()
        HomeSelectionUntween:Play()
        ItemsTitle.Text = "Blatant"
        SettingsToggled = true
        MainToggled = false
        ItemsList.Visible = false
        ItemsList1.Visible = true
    end
end)

HomeButtonSelection.Parent = button
HomeButtonSelection.BorderSizePixel = 0
HomeButtonSelection.CornerRadius = 0
HomeButtonSelection.BackgroundColor3 = Color3.fromHex("#54516e")
HomeButtonSelection.Size = UDim2.new(0, 0, 0, 2)
HomeButtonSelection.HorizontalAlignment = "Center"
HomeButtonSelection.VerticalAlignment = "Bottom"
HomeButtonSelection.Position = UDim2.new(0, 0, 0, 4)
WhatsUp = TweenInfo.new(1)
SelectionTwee1n = TweenService:Create(HomeButtonSelection, WhatsUp, {Size = UDim2.new(0, 12, 0, 2)})
SelectionTwee1n:Play()

SettingsButtonSelection.Parent = button1
SettingsButtonSelection.BorderSizePixel = 0
SettingsButtonSelection.CornerRadius = 0
SettingsButtonSelection.BackgroundColor3 = Color3.fromHex("#54516e")
SettingsButtonSelection.Size = UDim2.new(0, 0, 0, 2)
SettingsButtonSelection.HorizontalAlignment = "Center"
SettingsButtonSelection.VerticalAlignment = "Bottom"
SettingsButtonSelection.Position = UDim2.new(0, 0, 0, 4)

Items.CornerRadius = 9
Items.BorderSizePixel = 0
Items.BorderColor3 = Frontground
Items.BackgroundColor3 = Background
Items.Size = UDim2.new(0, 220, 0, 220)
Items.HorizontalAlignment = "Center"
Items.VerticalAlignment = "Center"

ItemsList.Size = UDim2.new(0, 220, 0, 185)
ItemsList.VerticalAlignment = "Bottom"
ItemsList.BackgroundTransparency = 1
ItemsList.ClipsDescendants = true

ItemsList1.Size = UDim2.new(0, 220, 0, 185)
ItemsList1.VerticalAlignment = "Bottom"
ItemsList1.BackgroundTransparency = 1
ItemsList1.Visible = false
ItemsList1.ClipsDescendants = true

button1.MouseEnter:Connect(function()
    if SettingsToggled == false then
        HoverTween1 = TweenService:Create(SettingsButtonSelection, tweenInfo, {Size = UDim2.new(0, 8, 0, 2)})
        HoverTween1:Play()
    end
end)

button1.MouseLeave:Connect(function()
if SettingsToggled == false then
    HoverTween2 = TweenService:Create(SettingsButtonSelection, tweenInfo, {Size = UDim2.new(0, 0, 0, 2)})
    HoverTween2:Play()
    end
end)

Title.VerticalAlignment = "Center"
Title.Font = "SourceSansPro-Bold"
Title.Text = game:GetService("ServerService"):GetIP()
Title.TextColor3 = Foreground
Title.FontSize = 21
Title.Position = UDim2.new(0, 7, 0, 0)

ItemsTitle.VerticalAlignment = "Top"
ItemsTitle.HorizontalAlignment = "Center"
ItemsTitle.Font = "SourceSansPro-Bold"
ItemsTitle.Text = "Ghost"
ItemsTitle.TextColor3 = Foreground
ItemsTitle.FontSize = 21
ItemsTitle.Size = UDim2.new(0, 50, 0, 13)
ItemsTitle.Position = UDim2.new(0, 0, 0, 10)

UIListLayout.Padding = UDim.new(3, 1)
UIListLayout.ChildrenHorizontalAlignment = "Center"

UIListLayout1.Padding = UDim.new(3, 1)
UIListLayout1.ChildrenHorizontalAlignment = "Center"

ItemsTopbar.Size = UDim2.new(0, 220, 0, 27)
ItemsTopbar.CornerRadius = 9
ItemsTopbar.BackgroundColor3 = Color3.fromHex("#18181f")
ItemsTopbar.BorderSizePixel = 0
ItemsTopbar.Draggable = true

ItemsTopbarBottom.Size = UDim2.new(0, 220, 0, 10)
ItemsTopbarBottom.BackgroundColor3 = Color3.fromHex("#18181f")
ItemsTopbarBottom.BorderSizePixel = 0
ItemsTopbarBottom.VerticalAlignment = "bottom"
ItemsTopbarBottom.Draggable = true

ItemsTopbarBottom.Parent = ItemsTopbar
SettingsIcon.Parent = button1
Title.Parent = Frame
button.Parent = Frame
button1.Parent = Frame
ItemsTitle.Parent = ItemsTopbar
Items.Parent = gui
Frame.Parent = gui
HomeIcon.Parent = button
ItemsTopbar.Parent = Items
ItemsList.Parent = Items
ItemsList1.Parent = Items
UIListLayout.Parent = ItemsList
UIListLayout1.Parent = ItemsList1

gui.IsEnabled = true

function CreateHomeModule(name, desc, callback)
    tweenInfo = TweenInfo.new(0.3)
    local ItemsButton = Instance.new("TextButton")
    local Description = Instance.new("TextLabel")
    local ActiveShower = Instance.new("ImageLabel")
    local IsActive = false
    ActiveShower.Parent = ItemsButton
    ActiveShower.Position = UDim2.new(0, 50, 0, 10)
    ActiveShower.BackgroundTransparency = 1
    ActiveShower.Image = "https://cdn.discordapp.com/attachments/1039638065632784456/1067780968817102848/image.png"
    ActiveShower.Size = UDim2.new(0, 10, 0, 10)
    Description.Parent = ItemsButton
    Description.VerticalAlignment = "Center"
    Description.Text = desc
    Description.FontSize = 16
    Description.Position = UDim2.new(0, 11, 0, 8)
    Description.TextColor3 = Foreground
    ItemsButton.Parent = ItemsList
    ItemsButton.Size = UDim2.new(0, 200, 0, 46)
    ItemsButton.BackgroundColor3 = Frontground
    ItemsButton.CornerRadius = 5
    ItemsButton.BorderSizePixel = 0
    ItemsButton.Text = name
    ItemsButton.FontSize = 19
    ItemsButton.TextColor3 = Foreground
    ItemsButton.Font = "SourceSansPro-SemiBold"
    ItemsButton.PaddingRight = 75
    ItemsButton.PaddingTop = -7
    ItemsButton.MouseButton1Click:Connect(function()
    callback()
    if IsActive then
    print("Changing to false")
    IsActive = false
    ActiveShower.Image = "https://cdn.discordapp.com/attachments/1039638065632784456/1067780968817102848/image.png"
    else
    print("Changing to true")
    IsActive = true
    ActiveShower.Image = "https://cdn.discordapp.com/attachments/1039638065632784456/1067780968817102848/image.png"
    end
    end)
    
    ItemsButton.MouseEnter:Connect(function()
    local tween2 = TweenService:Create(ItemsButton, tweenInfo, {BackgroundColor3 = Color3.fromHex("#2e2d3b")})
    tween2:Play()
    end)
    ItemsButton.MouseLeave:Connect(function()
    local tween2 = TweenService:Create(ItemsButton, tweenInfo, {BackgroundColor3 = Frontground})
    tween2:Play()
    end)
end

function CreateSettingsModule(name, desc, callback)
    tweenInfo = TweenInfo.new(0.3)
    local ItemsButton = Instance.new("TextButton")
    local Description = Instance.new("TextLabel")
    local ActiveShower = Instance.new("ImageLabel")
    local IsActive = false
    ActiveShower.Parent = ItemsButton
    ActiveShower.Position = UDim2.new(0, 50, 0, 10)
    ActiveShower.BackgroundTransparency = 1
    ActiveShower.Image = "https://cdn.discordapp.com/attachments/1039638065632784456/1067780968817102848/image.png"
    ActiveShower.Size = UDim2.new(0, 10, 0, 10)
    Description.Parent = ItemsButton
    Description.VerticalAlignment = "Center"
    Description.Text = desc
    Description.FontSize = 16
    Description.Position = UDim2.new(0, 11, 0, 8)
    Description.TextColor3 = Foreground
    ItemsButton.Parent = ItemsList1
    ItemsButton.Size = UDim2.new(0, 200, 0, 46)
    ItemsButton.BackgroundColor3 = Frontground
    ItemsButton.CornerRadius = 5
    ItemsButton.BorderSizePixel = 0
    ItemsButton.Text = name
    ItemsButton.FontSize = 19
    ItemsButton.TextColor3 = Foreground
    ItemsButton.Font = "SourceSansPro-SemiBold"
    ItemsButton.PaddingRight = 75
    ItemsButton.PaddingTop = -7

    ItemsButton.MouseButton1Click:Connect(function()
    callback()
    if IsActive then
    print("Changing to false")
    IsActive = false
    ActiveShower.Image = "https://cdn.discordapp.com/attachments/1039638065632784456/1067780968817102848/image.png"
    else
    print("Changing to true")
    IsActive = true
    ActiveShower.Image = "https://cdn.discordapp.com/attachments/1039638065632784456/1067780968817102848/image.png"
    end
    end)

    ItemsButton.MouseEnter:Connect(function()
    local tween2 = TweenService:Create(ItemsButton, tweenInfo, {BackgroundColor3 = Color3.fromHex("#2e2d3b")})
    tween2:Play()
    end)
    ItemsButton.MouseLeave:Connect(function()
    local tween2 = TweenService:Create(ItemsButton, tweenInfo, {BackgroundColor3 = Frontground})
    tween2:Play()
    end)
end

Script.KeyType:Connect(function(e)
if e.KeyCode == 54 then
    gui:Open()
end
end)
