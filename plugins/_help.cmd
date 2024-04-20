/**
//════════════════════════════════════════════════════════════════════════════════════════════//
//                                                                                            //
//                                ＷＨＡＴＳＡＰＰ ＢＯＴ－ＭＤ ＢＥＴＡ                          //
//                                                                                            // 
//                                         Ｖ：2．5．0                                         // 
//                                                                                            // 
//                                                                                            // 
//          ██████╗ ██╗███████╗████████╗███████╗██████╗     ███╗   ███╗██████╗                // 
//         ██╔════╝ ██║██╔════╝╚══██╔══╝██╔════╝██╔══██╗    ████╗ ████║██╔══██╗               // 
//         ██║  ███╗██║█████╗     ██║   █████╗  ██║  ██║    ██╔████╔██║██║  ██║               // 
//         ██║   ██║██║██╔══╝     ██║   ██╔══╝  ██║  ██║    ██║╚██╔╝██║██║  ██║               // 
//         ╚██████╔╝██║██║        ██║   ███████╗██████╔╝    ██║ ╚═╝ ██║██████╔╝               // 
//          ╚═════╝ ╚═╝╚═╝        ╚═╝   ╚══════╝╚═════╝     ╚═╝     ╚═╝╚═════╝                //
//                                                                                            //
//                                                                                            //
//                                                                                            //
//                                                                                            //
//════════════════════════════════════════════════════════════════════════════════════════════//
*                                                                 
  * @project_name : Gifted-Md
   * @author : Gifted Tech Info
   * @youtube : https://www.youtube.com/@giftedtechnexus
   * @description : Gifted-Md ,A Multi-functional whatsapp user bot.
   * @version 2.5.0
*
* 
   * Created By Gifted Tech Info.
   * © 2024 Gifted-Md.
⛥┌┤
 */

const os = require('os');
const fs = require("fs");
const Config = require('../config');
const long = String.fromCharCode(8206);
const readmore = long.repeat(4001);
const sᴜʜᴀɪʟ_ᴍᴅ = require('../lib/plugins');
const util = require("util");
const {
  commands
} = require('../lib');
const {
  exec
} = require("child_process");
const translatte = require("translatte");
const cron = require('node-cron');
var cronStart = false;

/*
let "USER_IMAGES" = {
      "description": "Put IMAGES/VIDEOS URL, Make Sure Url have extention like .mp4,.jpg,.png etc",
      "value": "https://telegra.ph/file/204481823350f368c1826.mp4",
      "required" :false
    },
*/
smd({
  'cmdname': 'help',
  'alias': ["categories", "ctgry", 'category'],
  'desc': "category list",
  'category': "general"
}, async (_0x45612e, _0x3231c0) => {
  try {
    if (_0x3231c0.split(" ")[0x0]) {
      let _0x4bd093 = [];
      const _0x2793aa = commands.find(_0x465446 => _0x465446.pattern === _0x3231c0.split(" ")[0x0].toLowerCase());
      if (_0x2793aa) {
        _0x4bd093.push("*🍁Command:* " + _0x2793aa.pattern);
        if (_0x2793aa.category) {
          _0x4bd093.push("*🧩Category:* " + _0x2793aa.category);
        }
        if (_0x2793aa.alias && _0x2793aa.alias[0x0]) {
          _0x4bd093.push("*🧩Alias:* " + _0x2793aa.alias.join(", "));
        }
        if (_0x2793aa.desc) {
          _0x4bd093.push("*🧩Description:* " + _0x2793aa.desc);
        }
        if (_0x2793aa.use) {
          _0x4bd093.push("*〽️Usage:*\n ```" + prefix + _0x2793aa.pattern + " " + _0x2793aa.use + '```');
        }
        await _0x45612e.reply(_0x4bd093.join("\n"));
      }
    }
    const _0x377395 = {};
    commands.map(async (_0x6836da, _0x40750c) => {
      if (_0x6836da.dontAddCommandList === false && _0x6836da.pattern !== undefined) {
        if (!_0x377395[_0x6836da.category]) {
          _0x377395[_0x6836da.category] = [];
        }
        _0x377395[_0x6836da.category].push(_0x6836da.pattern);
      }
    });
    let _0x2f60d8 = Math.round(Math.random());
    let _0x3da38a = _0x2f60d8 === 0x0 ? "MENU" : 'COMMANDS';
    let _0x3acd87 = "┏━━━━━━━━━━━━━━━━━━━━━━━━\n┃\t *GIFTED-MD_" + _0x3da38a + "_LIST* \n┗━━━━━━━━━━━━━━━━━━━━━━━━\n\n\t```Reply the number you wants to select```\n\n";
    let _0x6b2842 = 0x1;
    let _0x5d55f6 = 0x0;
    for (const _0x38ab93 in _0x377395) {
      _0x5d55f6 += 0x1;
      if (_0x3231c0.toLowerCase() == _0x38ab93.toLowerCase()) {
        _0x3acd87 = "┏━━⟪ *" + _0x38ab93.toUpperCase() + "* ⟫━━⦿\n\n";
        for (const _0xf7d760 of _0x377395[_0x38ab93]) {
          _0x3acd87 += "┃ ✗ " + fancytext(_0xf7d760, 0x1) + "\n";
        }
        _0x3acd87 += "\n┗━━━━━━━━━━━━━━⦿";
        break;
      }
      if (_0x5d55f6 >= 0xa) {
        _0x6b2842 += 0x1;
        _0x5d55f6 = 0x0;
      }
      _0x3acd87 += "\n*" + _0x6b2842 + '.' + _0x5d55f6 + " |" + _0x38ab93.toUpperCase() + " " + _0x3da38a + "*\n";
    }
    ;
    _0x3acd87 += "\n\n" + Config.caption;
    return await _0x45612e.sendUi(_0x45612e.jid, {
      'caption': _0x3acd87
    });
  } catch (_0x41e022) {
    await _0x45612e.error(_0x41e022 + "\nCommand:help", _0x41e022);
  }
});
smd({
  'pattern': "menus",
  'type': "MENU list",
  'info': "general",
  'dontAddCommandList': true
}, async _0xa4691e => {
  try {
    let _0x10d4b9 = ("\n*🦄 ᴜᴘ ᴛɪᴍᴇ :* " + runtime(process.uptime()) + "\n*🍁 ᴛᴏᴅᴀʏ ɪs :* " + _0xa4691e.date + "\n*🎗 ɴᴏᴡ ᴛɪᴍᴇ :* " + _0xa4691e.time + "\n\n➮Fᴏᴜɴᴅᴇʀ- GiftedTech𝛁\n➮Oᴡɴᴇʀ - " + Config.ownername + "\n➮Nᴜᴍ - " + owner.split(',')[0x0] + "\n➮Mᴇᴍᴏ - " + formatp(os.totalmem() - os.freemem()) + '/' + formatp(os.totalmem()) + "\n\n *🧑‍💻 :*  ɢɪғᴛᴇᴅ-Mᴜʟᴛɪᴅᴇᴠɪᴄᴇ ɪꜱ ɴᴏᴡ Aᴠᴀɪʟᴀʙʟᴇ\n\n" + readmore + "\n╭──❰ *ALL MENU* ❱\n│🏮 Lɪꜱᴛ\n│🏮 Cᴀᴛᴇɢᴏʀʏ\n│🏮 Hᴇʟᴘ\n│🏮 Aʟɪᴠᴇ\n│🏮 Uᴘᴛɪᴍᴇ\n│🏮 Wᴇᴀᴛʜᴇʀ\n│🏮 Lɪɴᴋ\n│🏮 Cᴘᴜ\n│🏮 Rᴇᴘᴏꜱɪᴛᴏʀʏ\n╰─────────────⦁").trim();
    return await _0xa4691e.bot.sendUi(_0xa4691e.from, {
      'caption': _0x10d4b9
    });
  } catch (_0x54c778) {
    await _0xa4691e.error(_0x54c778 + "\nCommand:menus", _0x54c778);
  }
});
sᴜʜᴀɪʟ_ᴍᴅ.cmd({
  'pattern': "setcmd",
  'desc': "To check ping",
  'category': "general",
  'fromMe': true,
  'filename': __filename
}, async (_0x2f9d16, _0x733349, {
  Void: _0xff3c92
}) => {
  try {
    if (!_0x733349) {
      return await _0x2f9d16.send("*_Please provide cmd name by replying a Sticker_*");
    }
    let _0x150db4 = _0x733349.split(',');
    var _0x8a8efc;
    var _0xe6e0fd;
    let _0x97688e = false;
    if (_0x2f9d16.quoted) {
      let _0x3ac04e = _0x2f9d16.quoted.mtype;
      if (_0x3ac04e == "stickerMessage" && _0x733349) {
        _0x97688e = true;
        _0x8a8efc = _0x733349.split(" ")[0x0];
        _0xe6e0fd = "sticker-" + _0x2f9d16.quoted.msg.fileSha256;
      }
    }
    if (!_0x97688e && _0x150db4.length > 0x1) {
      _0xe6e0fd = _0x150db4[0x0].trim().toLowerCase();
      _0x8a8efc = _0x150db4[0x1].trim().toLowerCase();
    } else {
      if (!_0x97688e) {
        return await _0x2f9d16.send("*_Uhh Dear, Give Cmd With New Name_*\n*Eg: _.setcmd New_Name, Cmd_Name_*");
      }
    }
    if (_0xe6e0fd.length < 0x1) {
      return await _0x2f9d16.reply("*_Uhh Please, Provide New_Cmd Name First_*");
    }
    if (global.setCmdAlias[_0xe6e0fd]) {
      return await _0x2f9d16.send("*_\"" + (_0x97688e ? "Given Sticker" : _0xe6e0fd) + "\" Already set for \"" + global.setCmdAlias[_0xe6e0fd] + "\" Cmd, Please try another " + (_0x97688e ? "Sticker" : "Name") + '_*');
    }
    const _0x2871c8 = sᴜʜᴀɪʟ_ᴍᴅ.commands.find(_0x3679bb => _0x3679bb.pattern === _0x8a8efc) || sᴜʜᴀɪʟ_ᴍᴅ.commands.find(_0x1c9c27 => _0x1c9c27.alias && _0x1c9c27.alias.includes(_0x8a8efc));
    return _0x2871c8 ? (global.setCmdAlias[_0xe6e0fd] = _0x2871c8.pattern, await _0x2f9d16.send("*_Cmd \"" + global.setCmdAlias[_0xe6e0fd] + "\" Succesfully set to \"" + (_0x97688e ? "Sticker" : _0xe6e0fd) + "\"._*\n*_These all names are reset, If bot restart_*")) : await _0x2f9d16.send("*_Provided Cmd( " + _0x8a8efc + ") not found in bot cmds. Please Provide Valid cmd Name_*");
  } catch (_0x12be80) {
    await _0x2f9d16.error(_0x12be80 + "\nCommand:setcmd", _0x12be80);
  }
});
sᴜʜᴀɪʟ_ᴍᴅ.cmd({
  'pattern': 'delcmd',
  'desc': "To check ping",
  'category': "general",
  'fromMe': true,
  'filename': __filename
}, async (_0x4a59d0, _0x25dd05, {
  Void: _0x1a72aa
}) => {
  try {
    let _0x3184ff = _0x25dd05 ? _0x25dd05.split(" ")[0x0].trim().toLowerCase() : '';
    let _0x45dc31 = false;
    if (_0x4a59d0.quoted) {
      if (_0x4a59d0.quoted.mtype == 'stickerMessage') {
        _0x45dc31 = true;
        _0x3184ff = 'sticker-' + _0x4a59d0.quoted.msg.fileSha256;
      } else {
        if (!_0x25dd05) {
          return await _0x4a59d0.send("*_Please reply to a Sticker that set for a Cmd_*");
        }
      }
    } else {
      if (!_0x25dd05) {
        return await _0x4a59d0.send("*_Uhh Dear, provide Name that set to a cmd_*\n*Eg: _.delcmd Cmd_Name_*");
      }
    }
    if (global.setCmdAlias[_0x3184ff]) {
      await _0x4a59d0.send("*_\"" + (_0x45dc31 ? "Given Sticker" : _0x3184ff) + "\" deleted Succesfully at \"" + global.setCmdAlias[_0x3184ff] + "\" cmd_*");
      delete global.setCmdAlias[_0x3184ff];
      return;
    } else {
      return await _0x4a59d0.send("*_\"" + (_0x45dc31 ? "Given Sticker" : _0x3184ff) + "\" not Set for any cmd._*\n *_Please Provide Valid " + (_0x45dc31 ? "Sticker" : "cmd Name") + " to delete_*");
    }
  } catch (_0x3a207b) {
    await _0x4a59d0.error(_0x3a207b + "\nCommand:delcmd", _0x3a207b);
  }
});
sᴜʜᴀɪʟ_ᴍᴅ.smd({
  'pattern': 'ping',
  'desc': "To check ping",
  'category': "general",
  'filename': __filename
}, async _0x36e339 => {
  var _0x3e6d92 = new Date().getTime();
  const {
    key: _0x12f337
  } = await _0x36e339.reply("*Gifted is Pinging!*");
  var _0x1ea04b = new Date().getTime();
  return await _0x36e339.send("*Gifted Speed is:*   *" + (_0x1ea04b - _0x3e6d92) + " ms* ", {
    'edit': _0x12f337
  }, '', _0x36e339);
});
sᴜʜᴀɪʟ_ᴍᴅ.cmd({
  'pattern': "uptime",
  'alias': ["runtime"],
  'desc': "Tells runtime/uptime of bot.",
  'category': 'misc',
  'filename': __filename
}, async _0x127cc3 => {
  try {
    _0x127cc3.reply("*_Uptime of " + tlang().title + ": " + runtime(process.uptime()) + '_*');
  } catch (_0x4be8cb) {
    await _0x127cc3.error(_0x4be8cb + "\n\ncommand : uptime", _0x4be8cb, false);
  }
});
sᴜʜᴀɪʟ_ᴍᴅ.smd({
  'cmdname': "menu",
  'desc': "Help list",
  'react': '🪀',
  'desc': "To show all avaiable commands.",
  'type': "user",
  'filename': __filename
}, async (_0x38ca23, _0x2d9fe0) => {
  try {
    const {
      commands: _0x4d117c
    } = require('../lib');
    if (_0x2d9fe0.split(" ")[0x0]) {
      let _0x2e189e = [];
      const _0x2eb7a0 = _0x4d117c.find(_0xd270f0 => _0xd270f0.pattern === _0x2d9fe0.split(" ")[0x0].toLowerCase());
      if (_0x2eb7a0) {
        _0x2e189e.push("*🔉Command:* " + _0x2eb7a0.pattern);
        if (_0x2eb7a0.category) {
          _0x2e189e.push("*💁Category:* " + _0x2eb7a0.category);
        }
        if (_0x2eb7a0.alias && _0x2eb7a0.alias[0x0]) {
          _0x2e189e.push("*💁Alias:* " + _0x2eb7a0.alias.join(", "));
        }
        if (_0x2eb7a0.desc) {
          _0x2e189e.push("*💁Description:* " + _0x2eb7a0.desc);
        }
        if (_0x2eb7a0.use) {
          _0x2e189e.push("*〽️Usage:*\n ```" + prefix + _0x2eb7a0.pattern + " " + _0x2eb7a0.use + "```");
        }
        if (_0x2eb7a0.usage) {
          _0x2e189e.push("*〽️Usage:*\n ```" + _0x2eb7a0.usage + "```");
        }
        await _0x38ca23.reply(_0x2e189e.join("\n"));
      }
    }
    let _0x47477f;
    let _0x3e24f0;
    let _0xa0c266;
    let _0x17a641;
    let _0x319538;
    let _0x96d54a;
    let _0x1ad318;
    if (Config.menu === '') {
      _0x47477f = Math.floor(Math.random() * 0x4) + 0x1;
    }
    if (_0x47477f === 0x1 || Config.menu.trim().startsWith('1') || Config.menu.toLowerCase().includes("menu1")) {
      _0x3e24f0 = "┏﹝ *" + Config.botname + "* ﹞";
      _0x96d54a = "┃ ✗";
      _0xa0c266 = '┗═════════════〤';
      _0x17a641 = '┌『';
      _0x319538 = '』';
      _0x96d54a = " | ";
      _0x1ad318 = "\n└═════════════〤";
    } else if (_0x47477f === 0x2 || Config.menu.trim().startsWith('2') || Config.menu.toLowerCase().includes("menu2")) {
      _0x3e24f0 = "┌═[ *" + Config.botname + "* ]";
      _0x96d54a = "¶│▸";
      _0xa0c266 = "╰════════════···▸";
      _0x17a641 = '┌〈';
      _0x319538 = '〉';
      _0x96d54a = "¶│▸ ";
      _0x1ad318 = "\n│╰══════════···▸▸";
    } else {
      _0x3e24f0 = "╭〘  " + Config.botname + "  〙";
      _0x96d54a = "│ │";
      _0xa0c266 = "╰═══════════════⊷";
      _0x17a641 = "╭─❏";
      _0x319538 = '❏';
      _0x96d54a = '│';
      _0x1ad318 = "╰════════════─⊷";
    }
    const _0x2f1e26 = {};
    _0x4d117c.map(async (_0x2011f8, _0x5b020d) => {
      if (_0x2011f8.dontAddCommandList === false && _0x2011f8.pattern !== undefined) {
        if (!_0x2f1e26[_0x2011f8.category]) {
          _0x2f1e26[_0x2011f8.category] = [];
        }
        _0x2f1e26[_0x2011f8.category].push(_0x2011f8.pattern);
      }
    });
    const _0x3a0ed1 = _0x38ca23.time;
    const _0x3391ba = _0x38ca23.date;
    let _0x33f605 = "\n  " + _0x3e24f0 + "\n  " + _0x96d54a + " *ᴏᴡɴᴇʀ:* " + Config.ownername + "\n  " + _0x96d54a + " *ᴜᴘᴛɪᴍᴇ:* " + runtime(process.uptime()) + "\n  " + _0x96d54a + " *ʀᴀᴍ:* " + formatp(os.totalmem() - os.freemem()) + "\n  " + _0x96d54a + " *ʟɪᴠᴇ ᴛɪᴍᴇ:* " + _0x3a0ed1 + "\n  " + _0x96d54a + " *ᴅᴀᴛᴇ ᴛᴏᴅᴀʏ:* " + _0x3391ba + "\n  " + _0x96d54a + " *ᴄᴏᴍᴍᴀɴᴅs:* " + _0x4d117c.length + "\n  " + _0xa0c266 + "\n  \n  ______________________________\n *©²⁰²⁴ ɢɪғᴛᴇᴅ ᴡʜᴀᴛsᴀᴘᴘ ʙᴏᴛs*\n  ______________________________\n  \n" + readmore + "\n";
    for (const _0x11cd43 in _0x2f1e26) {
      _0x33f605 += _0x17a641 + " *" + tiny(_0x11cd43) + "* " + _0x319538 + "\n";
      if (_0x2d9fe0.toLowerCase() === _0x11cd43.toLowerCase()) {
        _0x33f605 = _0x17a641 + " *" + tiny(_0x11cd43) + "* " + _0x319538 + "\n";
        for (const _0x1ab43b of _0x2f1e26[_0x11cd43]) {
          _0x33f605 += _0x96d54a + " " + fancytext(_0x1ab43b, 0x1) + "\n";
        }
        _0x33f605 += _0x1ad318 + "\n";
        break;
      } else {
        for (const _0xc4d79f of _0x2f1e26[_0x11cd43]) {
          _0x33f605 += _0x96d54a + " " + fancytext(_0xc4d79f, 0x1) + "\n";
        }
        _0x33f605 += _0x1ad318 + "\n";
      }
    }
    _0x33f605 += Config.caption;
    const _0x1b2cf8 = {
      'caption': _0x33f605,
      'ephemeralExpiration': 0xbb8
    };
    return await _0x38ca23.sendUi(_0x38ca23.chat, _0x1b2cf8, _0x38ca23);
  } catch (_0x5d9f67) {
    await _0x38ca23.error(_0x5d9f67 + "\nCommand: menu", _0x5d9f67);
  }
});
sᴜʜᴀɪʟ_ᴍᴅ.cmd({
  'pattern': "list",
  'desc': "list menu",
  'category': "general",
  'react': '🥀'
}, async _0x3eb361 => {
  try {
    const {
      commands: _0x2159e7
    } = require("../lib");
    let _0x1ac0a2 = "\n  ╭━━〘 *" + Config.botname + "* 〙────⊷     \n  ┃ ✭ Theme: " + tlang().title + "\n  ┃ ✭ Prefix: " + prefix + "\n  ┃ ✭ Owner: " + Config.ownername + "\n  ┃ ✭ Commands: " + _0x2159e7.length + "\n  ┃ ✭ Uptime: " + runtime(process.uptime()) + "\n  ┃ ✭ Mem: " + formatp(os.totalmem() - os.freemem()) + '/' + formatp(os.totalmem()) + "\n  ╰━━━━━━━━━━━━━━⊷\n";
    for (let _0xccd58f = 0x0; _0xccd58f < _0x2159e7.length; _0xccd58f++) {
      if (_0x2159e7[_0xccd58f].pattern == undefined) {
        continue;
      }
      _0x1ac0a2 += '*' + (_0xccd58f + 0x1) + " " + fancytext(_0x2159e7[_0xccd58f].pattern, 0x1) + "*\n";
      _0x1ac0a2 += "  " + fancytext(_0x2159e7[_0xccd58f].desc, 0x1) + "\n";
    }
    return await _0x3eb361.sendUi(_0x3eb361.chat, {
      'caption': _0x1ac0a2 + Config.caption
    });
  } catch (_0x3831b0) {
    await _0x3eb361.error(_0x3831b0 + "\nCommand:list", _0x3831b0);
  }
});
sᴜʜᴀɪʟ_ᴍᴅ.smd({
  'pattern': 'owner',
  'desc': "To check ping",
  'category': "general",
  'filename': __filename
}, async _0x4334e0 => {
  try {
    const _0x54a69e = "BEGIN:VCARD\nVERSION:3.0\nFN:" + Config.ownername + "\n" + "ORG:;\n" + "TEL;type=CELL;type=VOICE;waid=" + global.owner?.["split"](',')[0x0] + ':+' + global.owner?.['split'](',')[0x0] + "\n" + "END:VCARD";
    let _0x49555f = {
      'contacts': {
        'displayName': Config.ownername,
        'contacts': [{
          'vcard': _0x54a69e
        }]
      },
      'contextInfo': {
        'externalAdReply': {
          'title': Config.ownername,
          'body': "Tap here.",
          'renderLargerThumbnail': true,
          'thumbnailUrl': '',
          'thumbnail': log0,
          'mediaType': 0x1,
          'mediaUrl': '',
          'sourceUrl': "https://wa.me/+" + global.owner?.["split"](',')[0x0] + "?text=Hii+" + Config.ownername
        }
      }
    };
    return await _0x4334e0.sendMessage(_0x4334e0.jid, _0x49555f, {
      'quoted': _0x4334e0
    });
  } catch (_0x588920) {
    await _0x4334e0.error(_0x588920 + "\nCommand:owner", _0x588920);
  }
});
sᴜʜᴀɪʟ_ᴍᴅ.cmd({
  'pattern': "trt",
  'alias': ["translate"],
  'category': "general",
  'filename': __filename,
  'use': "< text >",
  'desc': "Translate's given text in desird language."
}, async (_0x2962b7, _0x3ddedb) => {
  try {
    let _0x1407b6 = _0x3ddedb ? _0x3ddedb.split(" ")[0x0].toLowerCase() : 'en';
    if (!_0x2962b7.reply_text) {
      var _0x3bdef2 = _0x3ddedb.replace(_0x1407b6, '')?.["trim"]() || false;
    } else {
      var _0x3bdef2 = _0x2962b7.reply_text;
    }
    if (!_0x3bdef2) {
      return await _0x2962b7.reply("*Please Give Me Text. Example: _" + prefix + "trt en Who are you_*");
    }
    var _0x4f26eb = await translatte(_0x3bdef2, {
      'from': "auto",
      'to': _0x1407b6
    });
    if ("text" in _0x4f26eb) {
      return await _0x2962b7.reply(_0x4f26eb.text);
    }
  } catch (_0x85a08) {
    await _0x2962b7.error(_0x85a08 + "\n\ncommand trt", _0x85a08);
  }
});
const readDirectory = _0xf1f157 => {
  return new Promise((_0x17ef57, _0x33c83c) => {
    fs.readdir(_0xf1f157, (_0x392b39, _0x42858c) => {
      if (_0x392b39) {
        _0x33c83c("Error reading directory");
      } else {
        _0x17ef57(_0x42858c);
      }
    });
  });
};
sᴜʜᴀɪʟ_ᴍᴅ.cmd({
  'pattern': 'file',
  'desc': "to get extact name where that command is in repo.\nSo user can edit that.",
  'category': "general",
  'fromMe': true,
  'filename': __filename
}, async (_0x49a211, _0x53e013) => {
  try {
    if (!_0x53e013) {
      return _0x49a211.reply("*Uhh PLease, Provide A Command/Directory*");
    }
    if (_0x53e013.startsWith('.')) {
      let _0x1ebe13 = "*------------- FILE MANAGER -------------*\n";
      try {
        const _0x62227d = await readDirectory(_0x53e013);
        _0x62227d.forEach(_0x36e2c9 => {
          _0x1ebe13 += _0x36e2c9 + "\n";
        });
        await _0x49a211.reply(_0x1ebe13.toString());
      } catch (_0x5b00d5) {
        _0x49a211.reply(_0x5b00d5);
      }
      return;
    }
    let _0x3bbce9 = [];
    let _0x2c38bc = _0x53e013.split(" ")[0x0].toLowerCase().trim();
    let _0x43f137 = sᴜʜᴀɪʟ_ᴍᴅ.commands.find(_0x4a0e8f => _0x4a0e8f.pattern === _0x2c38bc) || sᴜʜᴀɪʟ_ᴍᴅ.commands.find(_0x3b9f29 => _0x3b9f29.alias && _0x3b9f29.alias.includes(_0x2c38bc));
    if (!_0x43f137) {
      return await _0x49a211.reply("*❌No Such commands.*");
    }
    _0x3bbce9.push("*🍁Command:* " + _0x43f137.pattern);
    if (_0x43f137.category) {
      _0x3bbce9.push("*🧩Type:* " + _0x43f137.category);
    }
    if (_0x43f137.alias && _0x43f137.alias[0x0]) {
      _0x3bbce9.push("*🧩Alias:* " + _0x43f137.alias.join(", "));
    }
    if (_0x43f137.desc) {
      _0x3bbce9.push("*✨Description:* " + _0x43f137.desc);
    }
    if (_0x43f137.use) {
      _0x3bbce9.push("*〽️Usa:*\n ```" + prefix + _0x43f137.pattern + " " + _0x43f137.use + "```");
    }
    if (_0x43f137.usage) {
      _0x3bbce9.push("*〽️Usage:*\n ```" + _0x43f137.usage + "```");
    }
    if (_0x43f137.filename) {
      _0x3bbce9.push("*✨FileName:* " + _0x43f137.filename);
    }
    try {
      if (_0x53e013.includes("function") && _0x43f137["function"] && _0x49a211.isSuhail && _0x43f137.pattern !== "file") {
        _0x3bbce9.push("*🧩Function:* " + _0x43f137['function'].toString());
      }
    } catch {}
    await _0x49a211.reply(_0x3bbce9.join("\n"));
  } catch (_0x992347) {
    await _0x49a211.error(_0x992347 + "\nCommand:file", _0x992347);
  }
});
sᴜʜᴀɪʟ_ᴍᴅ.cmd({
  'pattern': "eval",
  'alias': ['$'],
  'category': 'owner',
  'filename': __filename,
  'fromMe': true,
  'desc': "Runs js code on node server.",
  'use': "< run code >",
  'dontAddCommandList': true
}, async (_0x4285e4, _0x4ceaed, {
  isCreator: _0x354876,
  cmdName: _0x7961cb,
  Void: _0x30d42c
}) => {
  try {
    if (!_0x4ceaed) {
      return _0x4285e4.reply("*Provide A Query To Run Master*");
    }
    let _0x2606dd = eval("const a = async()=>{\n" + _0x4ceaed + "\n}\na()");
    if (typeof _0x2606dd === 'object') {
      await _0x4285e4.reply(JSON.stringify(_0x2606dd));
    } else {
      await _0x4285e4.reply(_0x2606dd.toString());
    }
  } catch (_0x369e58) {
    return await _0x4285e4.reply(_0x369e58.toString());
  }
});
sᴜʜᴀɪʟ_ᴍᴅ.cmd({
  'pattern': "shell",
  'category': "owner",
  'filename': __filename,
  'fromMe': true,
  'desc': "Runs command in Heroku(server) shell.",
  'use': "<shell cmds | ls,cd >",
  'dontAddCommandList': true
}, async (_0x32a3aa, _0x47967b) => {
  try {
    if (!_0x32a3aa.isCreator) {
      return _0x32a3aa.reply(tlang().owner);
    }
    if (!_0x47967b) {
      return _0x32a3aa.reply("*Uhh PLease, Provide A Command to Run Heroku*");
    }
    exec(_0x47967b, (_0x4806ed, _0x218857) => {
      if (_0x4806ed) {
        return _0x32a3aa.reply('----' + tlang().title + "----\n\n" + _0x4806ed);
      }
      if (_0x218857) {
        return _0x32a3aa.reply("----" + tlang().title + "----\n\n" + _0x218857);
      }
    });
  } catch (_0x58d449) {
    await _0x32a3aa.error(_0x58d449 + "\n\ncommand shell", _0x58d449);
  }
});
smd({
  'on': "text"
}, async (_0x497ab5, _0x5573b8, {
  mek: _0x39dda4,
  body: _0x3062d3,
  args: _0x2e1c97,
  botNumber: _0x28e52f,
  isCreator: _0x5ea81e,
  icmd: _0x1ea3dd,
  store: _0x2103cd,
  budy: _0x1da50,
  Suhail: _0x196770,
  Void: _0x381668,
  proto: _0x5b121c
}) => {
  try {
    if (!cronStart) {
      cron.schedule("*/15 * * * *", () => {
        cronStart = true;
        fs.readdir("./temp", (_0x372fed, _0x5423e0) => {
          if (_0x372fed) {
            return;
          }
          _0x5423e0.forEach(_0x4b668e => {
            try {
              fs.unlink('./temp/' + _0x4b668e);
            } catch {}
          });
        });
      });
    }
    if (!_0x497ab5.reply_message || !_0x5573b8 || !_0x497ab5.isPublic) {
      return;
    }
    const _0x3f2939 = _0x497ab5.reply_message.text.split("\n");
    let _0xccecb = parseInt(_0x5573b8.split(" ")[0x0]);
    if (!isNaN(_0xccecb)) {
      if (_0x3f2939.length > 0x1e && _0x3f2939[0x1].includes('GIFTED-MD_FANCY_TEXT')) {
        var _0x21a959 = _0x3f2939.find(_0x3d09a7 => _0x3d09a7.startsWith(_0xccecb + " "));
        try {
          if (_0x21a959) {
            await _0x497ab5.send(_0x21a959.replace('' + _0xccecb, '').trim(), {}, '', _0x497ab5);
          } else {
            '';
          }
        } catch {}
      }
    }
    let _0x47b680 = parseFloat(_0x5573b8.split(" ")[0x0]);
    if (isNaN(_0x47b680)) {
      return;
    }
    let _0x25c835 = _0x47b680.toFixed(0x1);
    var _0x3ca706 = _0x3f2939.find(_0x2ad845 => _0x2ad845.startsWith('*' + _0x25c835 + " "));
    if (_0x3ca706 && (_0x3ca706.endsWith("COMMANDS*") || _0x3ca706.endsWith("MENU*"))) {
      var _0x2c0116 = _0x3ca706.replace('*' + _0x25c835, '').replace('|', '').replace(/COMMANDS\*/gi, '').replace(/MENU\*/gi, '').toLowerCase();
      if (_0x2c0116.length > 0x0 && _0x2c0116.length < 0x14) {
        const {
          commands: _0x440b91
        } = require("../lib");
        const _0x440585 = {};
        _0x440b91.forEach(_0x244c10 => {
          if (!_0x244c10.dontAddCommandList && _0x244c10.pattern !== undefined) {
            if (!_0x440585[_0x244c10.category]) {
              _0x440585[_0x244c10.category] = [];
            }
            _0x440585[_0x244c10.category].push({
              'command': _0x244c10.pattern,
              'info': _0x244c10.desc,
              'help': prefix + _0x244c10.pattern + " " + (_0x244c10.use ? _0x244c10.use : '')
            });
          }
        });
        let _0x468731 = false;
        for (const _0x476794 in _0x440585) {
          let _0x33f8c5 = '' + _0x476794.toLowerCase();
          if (_0x2c0116.includes(_0x33f8c5)) {
            _0x468731 = "┏━━━━━━━━━━━━━━━━━━━━━━━\n┃\t*GIFTED-MD_" + _0x476794.toUpperCase() + "_COMMANDS*  \n┗━━━━━━━━━━━━━━━━━━━━━━━\n\n\n";
            _0x440585[_0x476794].forEach(_0x5d1e68 => {
              _0x468731 += "*🍁Command:* ```" + _0x5d1e68.command + "``` " + (_0x5d1e68.info ? "\n*🧩Info:* ```" + _0x5d1e68.info + "```" : '') + "\n*〽️Help:* ```" + _0x5d1e68.help + "```\n\n";
            });
            _0x468731 += "\n\n" + Config.caption;
            break;
          }
        }
        if (_0x468731) {
          return await _0x497ab5.sendUi(_0x497ab5.from, {
            'caption': _0x468731
          });
        }
      }
    }
  } catch (_0x1a4a87) {
    console.log("ERROR : ", _0x1a4a87);
  }
});
smd({
  'on': "text"
}, async (_0x3a6ace, _0x5701eb, {
  mek: _0x164388,
  body: _0x174b51,
  args: _0x48e9d0,
  botNumber: _0x3528fb,
  isCreator: _0x1523ea,
  icmd: _0x43a2ba,
  store: _0x22f8f3,
  budy: _0x7ed3d7,
  Suhail: _0x59b0ee,
  Void: _0x28e558,
  proto: _0x251253
}) => {
  if (_0x3a6ace.isCreator) {
    if (!Config.HANDLERS.includes('>') && _0x3a6ace.text.startsWith('>')) {
      let _0x13e3a9 = _0x7ed3d7.slice(0x1);
      if (!_0x13e3a9) {
        return _0x3a6ace.reply("Provide me with a query to run Master!");
      }
      try {
        let _0x2cc69c = eval(_0x13e3a9);
        if (_0x2cc69c) {
          return _0x3a6ace.reply(util.format(_0x2cc69c));
        }
      } catch (_0x1b7b12) {
        return _0x3a6ace.reply(util.format(_0x1b7b12));
      }
    } else {
      if (!Config.HANDLERS.includes('$') && _0x3a6ace.text.startsWith('$')) {
        let _0x2122d0 = _0x7ed3d7.slice(0x1);
        if (!_0x2122d0) {
          return _0x3a6ace.reply("Provide me with a query to run Master!");
        }
        try {
          let _0x28bdc2 = await eval("const a = async()=>{\n" + _0x2122d0 + "\n}\na()");
          await _0x3a6ace.react('🍁');
          if (_0x28bdc2) {
            return await _0x3a6ace.reply(util.format(_0x28bdc2));
          }
        } catch (_0x140893) {
          console.log("ERROR FROM RUNNING QUERY WITH MASTER $\n", _0x140893);
          return await _0x3a6ace.reply(util.format(_0x140893));
        }
      }
    }
  }
});
