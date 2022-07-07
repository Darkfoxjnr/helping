function random_string()
    local a = {}
    for i = 1, math.random(10,20) do
        a[i] = string.char(math.random(32, 126))
    end
    return table.concat(a)
end

function esp_create_text(color, text, parts)
    local BillboardGui = Instance.new("BillboardGui")
    local TextLabel = Instance.new("TextLabel")
    
    BillboardGui.Parent = parts
    BillboardGui.AlwaysOnTop = true
    BillboardGui.LightInfluence = 1
    BillboardGui.Size = UDim2.new(0, 50, 0, 50)
    BillboardGui.StudsOffset = Vector3.new(0, 2, 0)
    
    TextLabel.Parent = BillboardGui
    TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
    TextLabel.BackgroundTransparency = 1
    TextLabel.Size = UDim2.new(1, 0, 1, 0)
    TextLabel.Text = text
    TextLabel.TextColor3 = color
    TextLabel.TextScaled = true  
end

ISLANDS = {
    Town_of_Beginnings = CFrame.new(964.650391, 9.44083023, 1194.3457, -0.313947469, -0.0728820413, 0.946639001, -3.59933949e-08, 0.997049451, 0.0767631382, -0.94944036, 0.0240995586, -0.313021153),
    Marine_Fort_F1 = CFrame.new(2901.85522, 19.9107838, -994.512817, 0.982177377, 0.00496421754, -0.187890768, 9.03157868e-08, 0.999651194, 0.0264120214, 0.187956333, -0.0259413049, 0.98183471),
    Sandora = CFrame.new(-1248.75305, 11.9811859, 1169.5072, -0.98561424, 0.00879764371, -0.1687814, -1.62755001e-08, 0.998644292, 0.052053906, 0.16901055, 0.0513050705, -0.984278023),
    Roca_Island = CFrame.new(5606.89795, 10.8569918, -5008.90625, -0.703061581, -0.00842666253, 0.711078942, -2.25347867e-06, 0.999929726, 0.0118474709, -0.71112895, 0.0083278995, -0.703012228),
    Land_Of_The_Sky = CFrame.new(9021.65723, 1447.46497, -10551.2461, 0.982544065, 0.11980024, -0.142320469, -3.75839768e-08, 0.76503998, 0.643982828, 0.186030135, -0.632741511, 0.751685441),
    Fishman_Island = CFrame.new(8004.43896, -2138.58545, -17015.3379, 0.997543275, -0.00648418441, 0.0697520673, 1.08927914e-07, 0.995707095, 0.0925598145, -0.0700528026, -0.0923324227, 0.99326092),
    Fishman_Cave = CFrame.new(5685.65527, 5.57387161, -16453.9941, 0.286769658, -0.0284844022, 0.957576096, 3.85838135e-08, 0.999557853, 0.0297331978, -0.957999587, -0.00852654129, 0.286642849),
    Mysterious_Cliff = CFrame.new(2207.30908, 8.54163933, -8612.25488, 0.976015747, -0.00670251111, 0.217596829, -3.82790688e-08, 0.999525845, 0.0307880025, -0.217700049, -0.0300495829, 0.975552976),
    Gravito_Fort = CFrame.new(2671.52563, 16.9575386, -15287.6191, -0.994288564, 0.0754799545, -0.0754520819, -1.21015773e-07, 0.706975341, 0.707238197, 0.106725059, 0.703198791, -0.702937484),
    Shark_Park = CFrame.new(677.582275, 20.1267471, -13094.3105, -0.797878385, 0.351459771, -0.489761382, 9.3734613e-08, 0.812452495, 0.583027422, 0.602818489, 0.465184927, -0.648238242),
    Colosseum = CFrame.new(-2020.58105, 16.0601521, -7616.23047, -0.484306216, 0.581917405, -0.653314292, -7.44510729e-08, 0.74673146, 0.665125668, 0.874898553, 0.322124541, -0.361646622),
    Coco_Island = CFrame.new(-4219.51709, 91.0130615, -15661.4131, -0.991374135, -0.00177623064, 0.131050125, 3.71671831e-08, 0.999908149, 0.0135528622, -0.131062165, 0.0134359607, -0.991283059),
    Restaurant_Baratie = CFrame.new(-3908.69824, 51.2357292, -5601.04883, 0.243073389, -0.0725560486, 0.967290521, -4.27220428e-08, 0.997198582, 0.0747994408, -0.970007896, -0.0181817971, 0.242392436),
    Island_Of_Zou = CFrame.new(-4344.21338, 16.01124, -2548.99976, -0.998030424, 0.0441020019, -0.0446130075, -2.57926764e-08, 0.711167634, 0.703022361, 0.0627320334, 0.701637745, -0.709766984),
    Reverse_Mountain = CFrame.new(-14356.0381, 18.7133446, -9449.17676, 0.0951792374, 0.00356604345, -0.995453775, 3.44471083e-08, 0.999993622, 0.00358230807, 0.995460153, -0.000340995728, 0.0951786339),
    Kori_Island = CFrame.new(-6597.38428, 178.828506, 1998.89587, 0.367381901, 0.550868273, -0.749382913, -6.23662118e-08, 0.805727303, 0.592286825, 0.930070162, -0.217595384, 0.29600963),
    Sphinx_Island = CFrame.new(-6331.71875, 42.7718315, -10134.1523, 0.968748569, -0.016819464, 0.247473955, -4.63350736e-09, 0.997698307, 0.0678081736, -0.248044863, -0.065689072, 0.966518879),
    Marine_Base_G1 = CFrame.new(-9966.11914, 75.7281799, -14956.6299, 0.0499417335, -0.508113623, 0.85984087, 1.95580867e-08, 0.860915124, 0.508748472, -0.998752117, -0.0254077613, 0.0429956019),
    Orange_Town = CFrame.new(-7004.58789, 14.4393425, -5382.34229, 0.000783956202, -0.687990546, 0.725719333, -2.64253686e-09, 0.725719571, 0.687990785, -0.999999702, -0.000539356493, 0.000568930467),
    Shell_Town = CFrame.new(-537.881592, 12.1521044, -4442.20996, 0.660568893, 0.374131352, -0.650902867, 5.76670018e-08, 0.866985619, 0.498333216, 0.750765443, -0.329183459, 0.57270366)
}

_G.GUI_NAME = random_string()
_G.FOLDER_NAME = random_string()
_G.island_esp_enabled = true

function create_parts()
    local Town_of_Beginnings = Instance.new("Part", game.workspace[_G.FOLDER_NAME])
    Town_of_Beginnings.CFrame = CFrame.new(ISLANDS.Town_of_Beginnings)
    Town_of_Beginnings.Name = "Town of Beginnings"
    Town_of_Beginnings.Transparency = 1
    Town_of_Beginnings.Anchored = true
    Town_of_Beginnings.CanCollide = false

    local Marine_Fort_F1 = Instance.new("Part", game.workspace[_G.FOLDER_NAME])
    Marine_Fort_F1.CFrame = CFrame.new(ISLANDS.Marine_Fort_F1)
    Marine_Fort_F1.Name = "Marine Fort F1"
    Marine_Fort_F1.Transparency = 1
    Marine_Fort_F1.Anchored = true
    Marine_Fort_F1.CanCollide = false

    local Sandora = Instance.new("Part", game.workspace[_G.FOLDER_NAME])
    Sandora.CFrame = CFrame.new(ISLANDS.Sandora)
    Sandora.Name = "Sandora"
    Sandora.Transparency = 1
    Sandora.Anchored = true
    Sandora.CanCollide = false

    local Roca_Island = Instance.new("Part", game.workspace[_G.FOLDER_NAME])
    Roca_Island.CFrame = CFrame.new(ISLANDS.Roca_Island)
    Roca_Island.Name = "Roca Island"
    Roca_Island.Transparency = 1
    Roca_Island.Anchored = true
    Roca_Island.CanCollide = false

    local Land_Of_The_Sky = Instance.new("Part", game.workspace[_G.FOLDER_NAME])
    Land_Of_The_Sky.CFrame = CFrame.new(ISLANDS.Land_Of_The_Sky)
    Land_Of_The_Sky.Name = "Land Of The Sky"
    Land_Of_The_Sky.Transparency = 1
    Land_Of_The_Sky.Anchored = true
    Land_Of_The_Sky.CanCollide = false

    local Fishman_Island = Instance.new("Part", game.workspace[_G.FOLDER_NAME])
    Fishman_Island.CFrame = CFrame.new(ISLANDS.Fishman_Island)
    Fishman_Island.Name = "Fishman Island"
    Fishman_Island.Transparency = 1
    Fishman_Island.Anchored = true
    Fishman_Island.CanCollide = false

    local Fishman_Cave = Instance.new("Part", game.workspace[_G.FOLDER_NAME])
    Fishman_Cave.CFrame = CFrame.new(ISLANDS.Fishman_Cave)
    Fishman_Cave.Name = "Fishman Cave"
    Fishman_Cave.Transparency = 1
    Fishman_Cave.Anchored = true
    Fishman_Cave.CanCollide = false

    local Mysterious_Cliff = Instance.new("Part", game.workspace[_G.FOLDER_NAME])
    Mysterious_Cliff.CFrame = CFrame.new(ISLANDS.Mysterious_Cliff)
    Mysterious_Cliff.Name = "Mysterious Cliff"
    Mysterious_Cliff.Transparency = 1
    Mysterious_Cliff.Anchored = true
    Mysterious_Cliff.CanCollide = false

    local Gravito_Fort = Instance.new("Part", game.workspace[_G.FOLDER_NAME])
    Gravito_Fort.CFrame = CFrame.new(ISLANDS.Gravito_Fort)
    Gravito_Fort.Name = "Gravito Fort"
    Gravito_Fort.Transparency = 1
    Gravito_Fort.Anchored = true
    Gravito_Fort.CanCollide = false

    local Shark_Park = Instance.new("Part", game.workspace[_G.FOLDER_NAME])
    Shark_Park.CFrame = CFrame.new(ISLANDS.Shark_Park)
    Shark_Park.Name = "Shark Park"
    Shark_Park.Transparency = 1
    Shark_Park.Anchored = true
    Shark_Park.CanCollide = false

    local Colosseum = Instance.new("Part", game.workspace[_G.FOLDER_NAME])
    Colosseum.CFrame = CFrame.new(ISLANDS.Colosseum)
    Colosseum.Name = "Colosseum"
    Colosseum.Transparency = 1
    Colosseum.Anchored = true
    Colosseum.CanCollide = false

    local Coco_Island = Instance.new("Part", game.workspace[_G.FOLDER_NAME])
    Coco_Island.CFrame = CFrame.new(ISLANDS.Coco_Island)
    Coco_Island.Name = "Coco Island"
    Coco_Island.Transparency = 1
    Coco_Island.Anchored = true
    Coco_Island.CanCollide = false

    local Restaurant_Baratie = Instance.new("Part", game.workspace[_G.FOLDER_NAME])
    Restaurant_Baratie.CFrame = CFrame.new(ISLANDS.Restaurant_Baratie)
    Restaurant_Baratie.Name = "Restaurant Baratie"
    Restaurant_Baratie.Transparency = 1
    Restaurant_Baratie.Anchored = true
    Restaurant_Baratie.CanCollide = true

    local Island_Of_Zou = Instance.new("Part", game.workspace[_G.FOLDER_NAME])
    Island_Of_Zou.CFrame = CFrame.new(ISLANDS.Island_Of_Zou)
    Island_Of_Zou.Name = "Island Of Zou"
    Island_Of_Zou.Transparency = 1
    Island_Of_Zou.Anchored = true
    Island_Of_Zou.CanCollide = false

    local Reverse_Mountain = Instance.new("Part", game.workspace[_G.FOLDER_NAME])
    Reverse_Mountain.CFrame = CFrame.new(ISLANDS.Reverse_Mountain)
    Reverse_Mountain.Name = "Reverse Mountain"
    Reverse_Mountain.Transparency = 1
    Reverse_Mountain.Anchored = true
    Reverse_Mountain.CanCollide = false

    local Kori_Island = Instance.new("Part", game.workspace[_G.FOLDER_NAME])
    Kori_Island.CFrame = CFrame.new(ISLANDS.Kori_Island)
    Kori_Island.Name = "Kori Island"
    Kori_Island.Transparency = 1
    Kori_Island.Anchored = true
    Kori_Island.CanCollide = false

    local Sphinx_Island = Instance.new("Part", game.workspace[_G.FOLDER_NAME])
    Sphinx_Island.CFrame = CFrame.new(ISLANDS.Sphinx_Island)
    Sphinx_Island.Name = "Sphinx Island"
    Sphinx_Island.Transparency = 1
    Sphinx_Island.Anchored = true
    Sphinx_Island.CanCollide = false

    local Marine_Base_G1 = Instance.new("Part", game.workspace[_G.FOLDER_NAME])
    Marine_Base_G1.CFrame = CFrame.new(ISLANDS.Marine_Base_G1)
    Marine_Base_G1.Name = "Marine Base G-1"
    Marine_Base_G1.Transparency = 1
    Marine_Base_G1.Anchored = true
    Marine_Base_G1.CanCollide = false

    local Orange_Town = Instance.new("Part", game.workspace[_G.FOLDER_NAME])
    Orange_Town.CFrame = CFrame.new(ISLANDS.Orange_Town)
    Orange_Town.Name = "Orange Town"
    Orange_Town.Transparency = 1
    Orange_Town.Anchored = true
    Orange_Town.CanCollide = false

    local Shell_Town = Instance.new("Part", game.workspace[_G.FOLDER_NAME])
    Shell_Town.CFrame = CFrame.new(ISLANDS.Shell_Town)
    Shell_Town.Name = "Shell Town"
    Shell_Town.Transparency = 1
    Shell_Town.Anchored = true
    Shell_Town.CanCollide = false
end

function delete_parts()
    for i,v in pairs (game:GetService("workspace")[_G.FOLDER_NAME]:GetDescendants()) do
        v:Destroy()
    end
end
