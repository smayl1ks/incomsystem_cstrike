#include <amxmodx>
#include <amxmisc>

#define PLUGIN "RestMenu Chat Commands"
#define VERSION "1.0"
#define AUTHOR "smayl1ks"

#define ADMIN_FLAG ADMIN_IMMUNITY

public plugin_init() 
{
    register_plugin(PLUGIN, VERSION, AUTHOR)
    
    register_clcmd("say /rest-menu", "cmdRestMenu")
    
    client_print(0, print_chat, "[AMXX] Меню запрета оружия: /rest-menu")
}

is_admin(id)
{
    return (get_user_flags(id) & ADMIN_FLAG)
}

public cmdRestMenu(id)
{
    if (!is_admin(id))
    {
        client_print(id, print_chat, "[AMXX] У вас нет доступа к этой команде")
        return PLUGIN_HANDLED
    }
    

    // Вызов оригинальной команды restmenu.amxx
    client_cmd(id, "amx_restmenu")
    return PLUGIN_HANDLED
}