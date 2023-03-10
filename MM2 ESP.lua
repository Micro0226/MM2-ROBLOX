--Murder Mystery 2 ESP
Highlight = Instance.new("Highlight")
Highlight.FillTransparency = 0.5

while true do
	for i,x in pairs(workspace:GetChildren()) do
		--Dropped Gun
		g = Highlight:Clone()
		if x.Name == "GunDrop" then
			if x:FindFirstChild("Highlight") then
			else
				g.FillColor = Color3.fromRGB(127, 127, 127)
				g.Adornee = x
				g.Parent = x
			end
		end
		
		--Players
		if x:FindFirstChild("Health") then
			if x.Name ~= game.Players.LocalPlayer.Name then
				p = Highlight:Clone()
				--Murderer
				if x:FindFirstChild("Knife") then
					if x:FindFirstChild("Highlight") then
						x:FindFirstChild("Highlight").FillColor = Color3.fromRGB(255, 0, 0)
					else
						p.FillColor = Color3.fromRGB(255, 0, 0)
						p.Adornee = x
						p.Parent = x
					end
				elseif game.Players:FindFirstChild(x.Name).Backpack:FindFirstChild("Knife") then
					if x:FindFirstChild("Highlight") then
						x:FindFirstChild("Highlight").FillColor = Color3.fromRGB(255, 0, 0)
					else
						p.FillColor = Color3.fromRGB(255, 0, 0)
						p.Adornee = x
						p.Parent = x
					end
				--Sheriff
				elseif x:FindFirstChild("Gun") then
					if x:FindFirstChild("Highlight") then
						x:FindFirstChild("Highlight").FillColor = Color3.fromRGB(64, 0, 255)
					else
						p.FillColor = Color3.fromRGB(64, 0, 255)
						p.Adornee = x
						p.Parent = x
					end
				elseif game.Players:FindFirstChild(x.Name).Backpack:FindFirstChild("Gun") then
					if x:FindFirstChild("Highlight") then
						x:FindFirstChild("Highlight").FillColor = Color3.fromRGB(64, 0, 255)
					else
						p.FillColor = Color3.fromRGB(64, 0, 255)
						p.Adornee = x
						p.Parent = x
					end
				--Innocent
				else
					if x:FindFirstChild("Highlight") then
						x:FindFirstChild("Highlight").FillColor = Color3.fromRGB(0, 255, 0)
					else
						p.FillColor = Color3.fromRGB(0, 255, 0)
						p.Adornee = x
						p.Parent = x
					end
				end
			end
		end
	end
	wait(0.25)
end