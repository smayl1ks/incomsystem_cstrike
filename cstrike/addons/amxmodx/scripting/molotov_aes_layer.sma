#include <amxmodx>
#include <molotov>

public plugin_init() {
	register_plugin("Molotov AES Layer", "1.0", "Tonitaga")
}

public public_GiveMolotov(id, count, maximum) {
    if (!IsUserHasMolotov(id))
    {
        GiveUserMolotov(id)
    }
}