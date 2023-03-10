Highlight = Instance.new("Highlight")
Highlight.FillTransparency = 0.5

while true do
	for i,x in pairs(workspace:GetChildren()) do
		--ESP
		if x:FindFirstChild("Body Colors") then
			h = Highlight:Clone()
			--Murderer
			if x:FindFirstChild("Knife") then
				if x:FindFirstChild("Highlight") then
					x:FindFirstChild("Highlight").FillColor = Color3.fromRGB(255, 0, 0)
				else
					h.FillColor = Color3.fromRGB(255, 0, 0)
					h.Adornee = x
					h.Parent = x
				end
			elseif game.Players:FindFirstChild(x.Name).Backpack:FindFirstChild("Knife") then
				if x:FindFirstChild("Highlight") then
					x:FindFirstChild("Highlight").FillColor = Color3.fromRGB(255, 0, 0)
				else
					h.FillColor = Color3.fromRGB(255, 0, 0)
					h.Adornee = x
					h.Parent = x
				end
			--Sheriff
			elseif x:FindFirstChild("Gun") then
				if x:FindFirstChild("Highlight") then
					x:FindFirstChild("Highlight").FillColor = Color3.fromRGB(127, 0, 255)
				else
					h.FillColor = Color3.fromRGB(127, 0, 255)
					h.Adornee = x
					h.Parent = x
				end
			elseif game.Players:FindFirstChild(x.Name).Backpack:FindFirstChild("Gun") then
				if x:FindFirstChild("Highlight") then
					x:FindFirstChild("Highlight").FillColor = Color3.fromRGB(127, 0, 255)
				else
					h.FillColor = Color3.fromRGB(127, 0, 255)
					h.Adornee = x
					h.Parent = x
				end
			--Innocent
			else
				if x:FindFirstChild("Highlight") then
					x:FindFirstChild("Highlight").FillColor = Color3.fromRGB(0, 255, 0)
				else
					h.FillColor = Color3.fromRGB(0, 255, 0)
					h.Adornee = x
					h.Parent = x
				end
			end
		end
		
		if game.Players.LocalPlayer.Character:FindFirstChild("Highlight") then
			game.Players.LocalPlayer.Character:FindFirstChild("Highlight"):Destroy()
		end
	end
	wait(0.25)
end