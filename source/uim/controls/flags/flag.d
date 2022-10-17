module uim.controls.flags.flag;

@safe: 
import uim.controls;

class DUIMFlagControl : DUIMDivControl {
  mixin(ControlThis!("uIMFlagControl"));

  override void initialize() {
    super.initialize;

    this
      .classes("flag");
  }

  mixin(OProperty!("string", "size"));
  mixin(OProperty!("string", "country"));

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

    if (country) myClasses ~= "flag-country-"~country;
    if (size) myClasses ~= "flag-"~size;

    switch(country.toLower) { 
    case "ad", "andorra": myClasses ~= "flag-country-ad"; break;
    case "ae", "united arab emirates": myClasses ~= "flag-country-ae"; break; 
    case "af", "afghanistan": myClasses ~= "flag-country-af"; break;
    case "ag", "antigua": myClasses ~= "flag-country-ag"; break;
    case "ai", "anguilla": myClasses ~= "flag-country-ai"; break;
    case "am", "armenia": myClasses ~= "flag-country-am"; break;
    case "ao", "angolan": myClasses ~= "flag-country-ao"; break;
    case "aq", "antarctica": myClasses ~= "flag-country-aq"; break;
    case "ar", "argentina": myClasses ~= "flag-country-ar"; break;
    case "as", "american Samoa": myClasses ~= "flag-country-as"; break; 
    case "at", "austria": myClasses ~= "flag-country-at"; break;
    case "au", "australia": myClasses ~= "flag-country-au"; break;
    case "aw", "aruba": myClasses ~= "flag-country-aw"; break;
    case "ax", "aslan Islands": myClasses ~= "flag-country-ax"; break; 
    case "az", "azerbaijan": myClasses ~= "flag-country-az"; break;
    case "ba", "bosnian": myClasses ~= "flag-country-ba"; break;
    case "bb", "barbados": myClasses ~= "flag-country-bb"; break;
    case "be", "belgium": myClasses ~= "flag-country-be"; break;
    case "bf", "burkina Faso": myClasses ~= "flag-country-bf"; break; 
    case "bg", "bulgaria": myClasses ~= "flag-country-bg"; break;
    case "bh", "bahrain": myClasses ~= "flag-country-bh"; break;
    case "bi", "burundi": myClasses ~= "flag-country-bi"; break;
    case "bj", "benin": myClasses ~= "flag-country-bj"; break;
    case "bl", "saint-Barthélemy": myClasses ~= "flag-country-bl"; break;
    case "bm", "bermuda": myClasses ~= "flag-country-bm"; break;
    case "bn", "bruneian": myClasses ~= "flag-country-bn"; break;
    case "bo", "bolivia": myClasses ~= "flag-country-bo"; break;
    case "bq", "bonaire": myClasses ~= "flag-country-bq"; break;
    case "br", "brazil": myClasses ~= "flag-country-br"; break;
    case "bs", "bahamas": myClasses ~= "flag-country-bs"; break;
    case "bt", "bhutan": myClasses ~= "flag-country-bt"; break;
    case "bv", "bouvet Island": myClasses ~= "flag-country-bv"; break; 
    case "bw", "batswana": myClasses ~= "flag-country-bw"; break;
    case "by", "belarus": myClasses ~= "flag-country-by"; break;
    case "bz", "belize": myClasses ~= "flag-country-bz"; break;
    case "ca", "canada": myClasses ~= "flag-country-ca"; break;
    case "cc", "cocos Island": myClasses ~= "flag-country-cc"; break; 
    case "cd", "democratic Republic of Congo": myClasses ~= "flag-country-cd"; break; 
    case "cf", "central African Republic": myClasses ~= "flag-country-cf"; break; 
    case "cg", "republic of the Congo": myClasses ~= "flag-country-cg"; break; 
    case "ch", "switzerland": myClasses ~= "flag-country-ch"; break;
    case "ci", "ivory Coast": myClasses ~= "flag-country-ci"; break; 
    case "ck", "cook Island": myClasses ~= "flag-country-ck"; break; 
    case "cl", "chile": myClasses ~= "flag-country-cl"; break;
    case "cm", "cameroon": myClasses ~= "flag-country-cm"; break;
    case "cn", "china": myClasses ~= "flag-country-cn"; break;
    case "co", "colombia": myClasses ~= "flag-country-co"; break;
    case "cr", "costa Rica": myClasses ~= "flag-country-cr"; break; 
    case "cu", "cuba": myClasses ~= "flag-country-cu"; break;
    case "cv", "cape Verde": myClasses ~= "flag-country-cv"; break; 
    case "cw", "curacao": myClasses ~= "flag-country-cw"; break;
    case "cx", "christmas Island": myClasses ~= "flag-country-cx"; break; 
    case "cy", "cyprus": myClasses ~= "flag-country-cy"; break;
    case "cz", "czech Republic": myClasses ~= "flag-country-cz"; break; 
    case "de", "germany": myClasses ~= "flag-country-de"; break;
    case "dj", "djibouti": myClasses ~= "flag-country-dj"; break;
    case "dk", "denmark": myClasses ~= "flag-country-dk"; break;
    case "dm", "dominica": myClasses ~= "flag-country-dm"; break;
    case "do", "dominican Republic": myClasses ~= "flag-country-do"; break; 
    case "dz", "algeria": myClasses ~= "flag-country-dz"; break;
    case "ec", "ecuador": myClasses ~= "flag-country-ec"; break;
    case "ee", "estonia": myClasses ~= "flag-country-ee"; break;
    case "eg", "egypt": myClasses ~= "flag-country-eg"; break;
    case "eh", "sahrawi": myClasses ~= "flag-country-eh"; break;
    case "er", "eritrea": myClasses ~= "flag-country-er"; break;
    case "es", "spain": myClasses ~= "flag-country-es"; break;
    case "es-ct", "catalonia": myClasses ~= "flag-country-es-ct"; break;	
    case "et", "ethiopia": myClasses ~= "flag-country-et"; break;
    case "eu", "european union": myClasses ~= "flag-country-eu"; break; 
    case "fi", "finland": myClasses ~= "flag-country-fi"; break;
    case "fj", "fiji": myClasses ~= "flag-country-fj"; break;
    case "fk", "falkland Islands": myClasses ~= "flag-country-fk"; break; 
    case "fm", "federate States of Micronesia": myClasses ~= "flag-country-fm"; break; 
    case "fo", "faroe Islands": myClasses ~= "flag-country-fo"; break; 
    case "fr", "france": myClasses ~= "flag-country-fr"; break;
    case "ga", "gabon": myClasses ~= "flag-country-ga"; break;
    case "gb", "great britain": myClasses ~= "flag-country-gb"; break; 
    case "gb-eng", "england": myClasses ~= "flag-country-gb-eng"; break;	
    case "gb-nir", "Nothern Ireland": myClasses ~= "flag-country-gb-nir"; break;	
    case "gb-sct", "Scotland": myClasses ~= "flag-country-gb-sct"; break;	
    case "gb-wls", "Wales": myClasses ~= "flag-country-gb-wls"; break;	
    case "gd", "grenada": myClasses ~= "flag-country-gd"; break;
    case "ge", "georgia": myClasses ~= "flag-country-ge"; break;
    case "gf", "guyana": myClasses ~= "flag-country-gf"; break;
    case "gg", "guernsey": myClasses ~= "flag-country-gg"; break;
    case "gh", "ghana": myClasses ~= "flag-country-gh"; break;
    case "gi", "gibraltar": myClasses ~= "flag-country-gi"; break;
    case "gl", "greenland": myClasses ~= "flag-country-gl"; break;
    case "gm", "gambia": myClasses ~= "flag-country-gm"; break;
    case "gn", "guinea": myClasses ~= "flag-country-gn"; break;
    case "gp", "guadeloupe": myClasses ~= "flag-country-gp"; break;
    case "gq", "equatorial Guinea": myClasses ~= "flag-country-gq"; break; 
    case "gr", "greece": myClasses ~= "flag-country-gr"; break;
    case "gs", "south Georgia": myClasses ~= "flag-country-gs"; break; 
    case "gt", "guatemala": myClasses ~= "flag-country-gt"; break;
    case "gu", "guam": myClasses ~= "flag-country-gu"; break;
    case "gw", "guinea-Bissau": myClasses ~= "flag-country-gw"; break;
    case "gy", "guyana": myClasses ~= "flag-country-gy"; break;
    case "hk", "hong kong": myClasses ~= "flag-country-hk"; break; 
    case "hm", "heard and mcdonald islands": myClasses ~= "flag-country-hm"; break; 
    case "hn", "honduras": myClasses ~= "flag-country-hn"; break;
    case "hr", "croatia": myClasses ~= "flag-country-hr"; break;
    case "ht", "haiti": myClasses ~= "flag-country-ht"; break;
    case "hu", "hungary": myClasses ~= "flag-country-hu"; break;
    case "id", "indonesia": myClasses ~= "flag-country-id"; break;
    case "ie", "ireland": myClasses ~= "flag-country-ie"; break;
    case "il", "israel": myClasses ~= "flag-country-il"; break;
    case "im", "isle of Man": myClasses ~= "flag-country-im"; break; 
    case "in", "india": myClasses ~= "flag-country-in"; break;
    case "io", "British Indian Ocean Territory": myClasses ~= "flag-country-io"; break; 
    case "iq", "iraq": myClasses ~= "flag-country-iq"; break;
    case "ir", "iran": myClasses ~= "flag-country-ir"; break;
    case "is", "iceland": myClasses ~= "flag-country-is"; break;
    case "it", "italy": myClasses ~= "flag-country-it"; break;
    case "je", "Jersey": myClasses ~= "flag-country-je"; break;
    case "jm", "Jamaica": myClasses ~= "flag-country-jm"; break;
    case "jo", "Jordan": myClasses ~= "flag-country-jo"; break;
    case "jp", "Japan": myClasses ~= "flag-country-jp"; break;
    case "ke", "kenya": myClasses ~= "flag-country-ke"; break;
    case "kg", "kyrgyzstan": myClasses ~= "flag-country-kg"; break;
    case "kh", "cambodia": myClasses ~= "flag-country-kh"; break;
    case "ki", "kiribati": myClasses ~= "flag-country-ki"; break;
    case "km", "comoros": myClasses ~= "flag-country-km"; break;
    case "kn", "saint Kitts and Nevis": myClasses ~= "flag-country-kn"; break; 
    case "kp", "north Korea": myClasses ~= "flag-country-kp"; break; 
    case "kr", "south Korea": myClasses ~= "flag-country-kr"; break; 
    case "kw", "kuwait": myClasses ~= "flag-country-kw"; break;
    case "ky", "cayman islands": myClasses ~= "flag-country-ky"; break; 
    case "kz", "kazakhstan": myClasses ~= "flag-country-kz"; break;
    case "la", "laos": myClasses ~= "flag-country-la"; break;
    case "lb", "lebanese": myClasses ~= "flag-country-lb"; break;
    case "lc", "saint Lucia": myClasses ~= "flag-country-lc"; break; 
    case "li", "liechtenstein": myClasses ~= "flag-country-li"; break;
    case "lk", "sri Lanka": myClasses ~= "flag-country-lk"; break; 
    case "lr", "liberia": myClasses ~= "flag-country-lr"; break;
    case "ls", "lesotho": myClasses ~= "flag-country-ls"; break;
    case "lt", "lithuania": myClasses ~= "flag-country-lt"; break;
    case "lu", "luxembourg": myClasses ~= "flag-country-lu"; break;
    case "lv", "latvia": myClasses ~= "flag-country-lv"; break;
    case "ly", "libya": myClasses ~= "flag-country-ly"; break;
    case "ma", "morocco": myClasses ~= "flag-country-ma"; break;
    case "mc", "monaco": myClasses ~= "flag-country-mc"; break;
    case "md", "moldova": myClasses ~= "flag-country-md"; break;
    case "me", "montenegro": myClasses ~= "flag-country-me"; break;
    case "mf", "saint Martin": myClasses ~= "flag-country-mf"; break; 
    case "mg", "madagascar": myClasses ~= "flag-country-mg"; break;
    case "mh", "marshall Islands": myClasses ~= "flag-country-mh"; break; 
    case "mk", "macedonia": myClasses ~= "flag-country-mk"; break;
    case "ml", "mali": myClasses ~= "flag-country-ml"; break;
    case "mm", "myanmar": myClasses ~= "flag-country-mm"; break;
    case "mn", "mongolia": myClasses ~= "flag-country-mn"; break;
    case "mo", "macao": myClasses ~= "flag-country-mo"; break;
    case "mp", "nothern Mariana Islands": myClasses ~= "flag-country-mp"; break; 
    case "mq", "martinique": myClasses ~= "flag-country-mq"; break;
    case "mr", "mauritania": myClasses ~= "flag-country-mr"; break;
    case "ms", "montserrat": myClasses ~= "flag-country-ms"; break;
    case "mt", "malta": myClasses ~= "flag-country-mt"; break;
    case "mu", "mauritius": myClasses ~= "flag-country-mu"; break;
    case "mv", "maldives": myClasses ~= "flag-country-mv"; break;
    case "mw", "malawi": myClasses ~= "flag-country-mw"; break;
    case "mx", "mexico": myClasses ~= "flag-country-mx"; break;
    case "my", "malaysia": myClasses ~= "flag-country-my"; break;
    case "mz", "mozambique": myClasses ~= "flag-country-mz"; break;
    case "na", "namibia": myClasses ~= "flag-country-na"; break;
    case "nc", "new caledonia": myClasses ~= "flag-country-nc"; break; 
    case "ne", "niger": myClasses ~= "flag-country-ne"; break;
    case "nf", "norfolk Island": myClasses ~= "flag-country-nf"; break; 
    case "ng", "nigeria": myClasses ~= "flag-country-ng"; break;
    case "ni", "nicaragua": myClasses ~= "flag-country-ni"; break;
    case "no", "norway": myClasses ~= "flag-country-no"; break;
    case "np", "nepal": myClasses ~= "flag-country-np"; break;
    case "nr", "nauruan": myClasses ~= "flag-country-nr"; break;
    case "nu", "niger": myClasses ~= "flag-country-nu"; break;
    case "nz", "new zeland": myClasses ~= "flag-country-nz"; break; 
    case "om", "Oman": myClasses ~= "flag-country-"; break;
    case "pa", "panama": myClasses ~= "flag-country-"; break;
    case "pe", "peru": myClasses ~= "flag-country-"; break;
    case "pf", "french polynesia": myClasses ~= "flag-country-"; break; 
    case "pg", "papua new guinea": myClasses ~= "flag-country-"; break; 
    case "ph", "philippines": myClasses ~= "flag-country-"; break;
    case "pk", "pakistan": myClasses ~= "flag-country-"; break;
    case "pl", "poland": myClasses ~= "flag-country-"; break;
    case "pm", "saint pierre": myClasses ~= "flag-country-"; break; 
    case "pn", "pitcairn islands": myClasses ~= "flag-country-"; break; 
    case "pr", "puerto rico": myClasses ~= "flag-country-"; break; 
    case "ps", "palestine": myClasses ~= "flag-country-"; break;
    case "pt", "portugal": myClasses ~= "flag-country-"; break;
    case "pw", "palau": myClasses ~= "flag-country-"; break;
    case "py", "paraguay": myClasses ~= "flag-country-"; break;
    case "qa", "Qatar": myClasses ~= "flag-country-"; break;
    case "re", "reunion Island": myClasses ~= "flag-country-"; break; 
    case "ro", "romania": myClasses ~= "flag-country-"; break;
    case "rs", "serbia": myClasses ~= "flag-country-"; break;
    case "ru", "russia": myClasses ~= "flag-country-"; break;
    case "rw", "rwanda": myClasses ~= "flag-country-"; break;
    case "sa", "saudi arabia": myClasses ~= "flag-country-sa"; break; 
    case "sb", "solomon Islands": myClasses ~= "flag-country-"; break; 
    case "sc", "seychelles": myClasses ~= "flag-country-"; break;
    case "sd", "sudan": myClasses ~= "flag-country-"; break;
    case "se", "sweden": myClasses ~= "flag-country-"; break;
    case "sg", "singapore": myClasses ~= "flag-country-"; break;
    case "sh", "saint Helena": myClasses ~= "flag-country-"; break; 
    case "si", "slovenia": myClasses ~= "flag-country-"; break;
    case "sj", "svalbard Island": myClasses ~= "flag-country-"; break; 
    case "sk", "slovakia": myClasses ~= "flag-country-"; break;
    case "sl", "sierra Leone": myClasses ~= "flag-country-"; break; 
    case "sm", "san Marino": myClasses ~= "flag-country-"; break; 
    case "sn", "senegal": myClasses ~= "flag-country-"; break;
    case "so", "somalia": myClasses ~= "flag-country-"; break;
    case "sr", "suriname": myClasses ~= "flag-country-"; break;
    case "ss", "south Sudan": myClasses ~= "flag-country-"; break; 
    case "st", "sao Tome": myClasses ~= "flag-country-"; break; 
    case "sv", "el Salvador": myClasses ~= "flag-country-"; break; 
    case "sx", "sint Maarten": myClasses ~= "flag-country-"; break; 
    case "sy", "syria": myClasses ~= "flag-country-"; break;
    case "sz", "swaziland": myClasses ~= "flag-country-"; break;
    case "tc", "turks and Caicos": myClasses ~= "flag-country-"; break; 
    case "td", "chad": myClasses ~= "flag-country-"; break;
    case "tf", "french Southern and Antarctic Lands": myClasses ~= "flag-country-"; break; 
    case "tg", "togo": myClasses ~= "flag-country-"; break;
    case "th", "thailand": myClasses ~= "flag-country-"; break;
    case "tj", "tajikistan": myClasses ~= "flag-country-"; break;
    case "tk", "tokelau": myClasses ~= "flag-country-"; break;
    case "tl", "timor Leste": myClasses ~= "flag-country-"; break; 
    case "tm", "turkmenistan": myClasses ~= "flag-country-"; break;
    case "tn", "tunisia": myClasses ~= "flag-country-"; break;
    case "to", "tonga": myClasses ~= "flag-country-"; break;
    case "tr", "turkey": myClasses ~= "flag-country-"; break;
    case "tt", "trinidad and tobago": myClasses ~= "flag-country-"; break; 
    case "tv", "tuvalu": myClasses ~= "flag-country-"; break;
    case "tz", "tanzania": myClasses ~= "flag-country-"; break;
    case "ua", "ukraine": myClasses ~= "flag-country-"; break;
    case "ug", "uganda": myClasses ~= "flag-country-"; break;
    case "um", "united states minor islands": myClasses ~= "flag-country-"; break; 
    case "un", "united Nations": myClasses ~= "flag-country-"; break; 
    case "us", "united states of america": myClasses ~= "flag-country-"; break; 
    case "uy", "uruguay": myClasses ~= "flag-country-"; break;
    case "uz", "uzbekistan": myClasses ~= "flag-country-"; break;
    case "va", "vatican City": myClasses ~= "flag-country-"; break; 
    case "vc", "saint Vincent": myClasses ~= "flag-country-"; break; 
    case "ve", "venezuela": myClasses ~= "flag-country-"; break;
    case "vg", "british virgin islands": myClasses ~= "flag-country-"; break; 
    case "vi", "virgin islands": myClasses ~= "flag-country-"; break; 
    case "vn", "vietnam": myClasses ~= "flag-country-vn"; break;
    case "vu", "vanuatu": myClasses ~= "flag-country-vu"; break;
    case "wf", "wallis and futuna": myClasses ~= "flag-country-"; break; 
    case "ws", "samoa": myClasses ~= "flag-country-ws"; break;
    case "ye", "yemen": myClasses ~= "flag-country-ye"; break;
    case "za", "south frica": myClasses ~= "flag-country-"; break; 
    case "zm", "zambia": myClasses ~= "flag-country-zm"; break;
    case "zw", "zimbabwe": myClasses ~= "flag-country-zw"; break;
    default: break; // Country unknown
  }
}
mixin(ControlCalls!("uIMFlagControl", "DUIMFlagControl"));
mixin(ControlCalls!("uIMFlag", "DUIMFlagControl"));

version(test_uim_controls) { unittest {
  assert(UIMFlag);
  assert(UIMFlag.noId == `<div class="flag"></div>`);
}}