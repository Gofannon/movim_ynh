<header>
    <ul class="list middle">
        <li>
            <span id="menu" class="primary on_mobile icon active gray" onclick="MovimTpl.toggleMenu()"><i class="zmdi zmdi-menu"></i></span>
            <span class="primary icon on_desktop icon gray"><i class="zmdi zmdi-comments"></i></span>
            <p class="center">{$c->__('page.chats')}</p>
        </li>
    </ul>
</header>

<ul id="chats_widget_list" class="list middle active divided spaced">{$list}</ul>

<div class="placeholder icon">
    <h1>{$c->__('chats.empty_title')}</h1>
    <h4>{$c->___('chats.empty', '<i class="zmdi zmdi-plus"></i>', '<a href="'.$c->route('contact').'"><i class="zmdi zmdi-accounts"></i> ', '</a>')}</h4>
</div>
<a class="button action color" onclick="MovimTpl.toggleActionButton()">
    <i class="zmdi zmdi-plus"></i>

    <ul class="actions">
        <li onclick="Chats_ajaxAdd()">
            <i class="zmdi zmdi-account-add"></i>
        </li>
        <li onclick="Rooms_ajaxAdd()">
            <i class="zmdi zmdi-accounts-add"></i>
        </li>
    </ul>
</a>
