local custommodels = 
{
	"divo",
	"atsvme",
    "rmodsian",
    "FK8",
} -- Add models that need to be loaded before player spawns

Citizen.CreateThread(function()
	while not NetworkIsPlayerActive(PlayerId()) do
		Citizen.Wait(0)
	end
	
	for i = 1, #custommodels, 1 do
		RequestModel(GetHashKey(i))  --If your table already contains hashes remove GetHashKey and just RequestModel(i)
		 print("optimizing -jgabt")
	end
	Citizen.Wait(0)
        print("Vehicles Optimized! -jgabt")
end)