#Область СлужебныйПрограммныйИнтерфейс

Функция ТелоЗапросаНаОткрытиеХранилища(Параметры) Экспорт
	ТелоЗапроса = "<?xml version=""1.0"" encoding=""UTF-8""?>
		|<crs:call xmlns:crs=""http://v8.1c.ru/8.2/crs"" alias=""" + Параметры.ИмяХранилища + """ name=""DevDepotAdmin_openDevDepot"" version=""" + Параметры.ВерсияПлатформы + """>
		|<crs:params>
		|<crs:alias value=""" + Параметры.ИмяХранилища + """/>
		|<crs:convert value=""false""/>
		|</crs:params>
		|</crs:call>";
	Возврат ТелоЗапроса;
КонецФункции

Функция ТелоЗапросаНаСозданиеХранилища(Параметры) Экспорт
	ТелоЗапроса = "<?xml version=""1.0"" encoding=""UTF-8""?>
		|<crs:call xmlns:crs=""http://v8.1c.ru/8.2/crs"" alias=""" + Параметры.ИмяХранилища + """ name=""DevDepotAdmin_createDevDepot"" version=""" + Параметры.ВерсияПлатформы + """>
		|<crs:params>
		|<crs:alias value=""" + Параметры.ИмяХранилища + """/>
		|<crs:rootID value=""" + КорневойИдентификаторКонфигурации() + """/>
		|<crs:adminName value=""" + Параметры.ИмяПользователя + """/>
		|<crs:adminPassword value=""" + Параметры.ХешПароляПользователя + """/>
		|<crs:code value=""""/>
		|<crs:features/>
		|<crs:snapshots>
		|<crs:data>" + Параметры.ШаблонКонфигурации + "</crs:data>
		|</crs:snapshots>
		|<crs:hashedVersionID value=""false""/>
		|</crs:params>
		|</crs:call>";
	Возврат ТелоЗапроса;
КонецФункции

Функция ТелоЗапросаНаПодключение(Параметры) Экспорт
	ТелоЗапроса = "<?xml version=""1.0"" encoding=""UTF-8""?>
		|<crs:call xmlns:crs=""http://v8.1c.ru/8.2/crs"" alias=""" + Параметры.ИмяХранилища + """ name=""DevDepot_depotInfo"" 
		|version=""" + Параметры.ВерсияПлатформы + """>
		|<crs:auth user=""" + Параметры.ПользовательХранилища + """ password=""" + Параметры.ХешПароляПользователя + """/>
		|<crs:params/>
		|</crs:call>";
	Возврат ТелоЗапроса;
КонецФункции

Функция ТелоЗапросаПолученияВерсийХранилища(Параметры) Экспорт
	ТелоЗапроса = "<?xml version=""1.0"" encoding=""UTF-8""?>
		|<crs:call xmlns:crs=""http://v8.1c.ru/8.2/crs"" alias=""" + Параметры.ИмяХранилища + """ name=""DevDepot_devDepotVersions"" version=""" + Параметры.ВерсияПлатформы + """>
		|<crs:auth user=""" + Параметры.ПользовательХранилища + """ password=""" + Параметры.ХешПароляПользователя + """/>
		|<crs:params>
		|<crs:filter>
		|<crs:mask value=""0""/>
		|<crs:beginDate value=""0001-01-01T00:00:00""/>
		|<crs:endDate value=""0001-01-01T00:00:00""/>
		|<crs:beginVerNum>4294967295</crs:beginVerNum>
		|<crs:endVerNum>4294967295</crs:endVerNum>
		|<crs:userIDs/>
		|<crs:objRefs/>
		|<crs:recursive value=""false""/>
		|<crs:labels value=""true""/>
		|<crs:onlyLabels value=""false""/>
		|<crs:configVersion value=""""/>
		|<crs:externals/>
		|<crs:noExternals/>
		|</crs:filter></crs:params>
		|</crs:call>";
	Возврат ТелоЗапроса;
КонецФункции

Функция ТелоЗапросаНаСозданиеПользователя(Параметры) Экспорт
	ТелоЗапроса = "<?xml version=""1.0"" encoding=""UTF-8""?>
		|<crs:call xmlns:crs=""http://v8.1c.ru/8.2/crs"" alias=""" + Параметры.ИмяХранилища + """ name=""UserManager_addUser"" version=""" + Параметры.ВерсияПлатформы + """>
		|<crs:auth user=""" + Параметры.ПользовательХранилища + """ password=""" + Параметры.ХешПользователяХранилища + """ />
		|<crs:bind bindID=""" + Параметры.ИдентификаторПодключения + """ />
		|<crs:params>
		|<crs:user>
		|<crs:id value=""" + Параметры.ИдентификаторОперации + """ />
		|<crs:name value=""" + Параметры.ИмяПользователя + """ />
		|<crs:password value=""" + Параметры.ХешНовогоПароля + """ />
		|<crs:rights value=""" + Параметры.Роль + """ />
		|</crs:user>
		|</crs:params>
		|</crs:call>";
	Возврат ТелоЗапроса;
КонецФункции

Функция ТелоЗапросаПоискаПользователя(Параметры) Экспорт
	ТелоЗапроса = "<?xml version=""1.0"" encoding=""UTF-8""?>
		|<crs:call xmlns:crs=""http://v8.1c.ru/8.2/crs"" alias=""" + Параметры.ИмяХранилища + """ name=""UserManager_depotUserByName"" version=""" + Параметры.ВерсияПлатформы + """>
		|<crs:auth user=""" + Параметры.ПользовательХранилища + """ password=""" + Параметры.ХешПользователяХранилища + """ />
		|<crs:bind bindID=""" + Параметры.ИдентификаторПодключения + """/>
		|<crs:params>
		|<crs:name value=""" + Параметры.ИмяПользователя + """/>
		|</crs:params>
		|</crs:call>";
	Возврат ТелоЗапроса;
КонецФункции

Функция ТелоЗапросаНаУдалениеПользователя(Параметры) Экспорт
	ТелоЗапроса = "<?xml version=""1.0"" encoding=""UTF-8""?>
		|<crs:call xmlns:crs=""http://v8.1c.ru/8.2/crs"" alias=""" + Параметры.ИмяХранилища + """ name=""UserManager_removeUser"" version=""" + Параметры.ВерсияПлатформы + """>
		|<crs:auth user=""" + Параметры.ПользовательХранилища + """ password=""" + Параметры.ХешПользователяХранилища + """ />
		|<crs:bind bindID=""" + Параметры.ИдентификаторПодключения + """/>
		|<crs:params>
		|<crs:id value=""" + Параметры.ИдентификаторПользователя + """/>
		|</crs:params>
		|</crs:call>";
	Возврат ТелоЗапроса;
КонецФункции

Функция ТелоЗапросаНаВосстановлениеПользователя(Параметры) Экспорт
	ТелоЗапроса = "<?xml version=""1.0"" encoding=""UTF-8""?>
		|<crs:call xmlns:crs=""http://v8.1c.ru/8.2/crs"" alias=""" + Параметры.ИмяХранилища + """ name=""UserManager_resurrectUser"" version=""" + Параметры.ВерсияПлатформы + """>
		|<crs:auth user=""" + Параметры.ПользовательХранилища + """ password=""" + Параметры.ХешПользователяХранилища + """ />
		|<crs:bind bindID=""" + Параметры.ИдентификаторПодключения + """/>
		|<crs:params>
		|<crs:id value=""" + Параметры.ИдентификаторПользователя + """/>
		|</crs:params>
		|</crs:call>";
	Возврат ТелоЗапроса;
КонецФункции

Функция ТелоЗапросаНаПолучениеСпискаПользователей(Параметры) Экспорт
	ТелоЗапроса = "<?xml version=""1.0"" encoding=""UTF-8""?>
		|<crs:call xmlns:crs=""http://v8.1c.ru/8.2/crs"" alias=""" + Параметры.ИмяХранилища + """ name=""DevDepot_devObjectsStatistic"" version=""" + Параметры.ВерсияПлатформы + """>
		|<crs:auth user=""" + Параметры.ПользовательХранилища + """ password=""" + Параметры.ХешПользователяХранилища + """ />
		|<crs:bind bindID=""" + Параметры.ИдентификаторПодключения + """/>
		|<crs:params>
		|<crs:objRefs/>
		// фильтр
		|<crs:removed value=""true""/> 
		|</crs:params>
		|</crs:call>";
	Возврат ТелоЗапроса;
КонецФункции

Функция ТелоЗапросаНаОбновлениеРолиПользователя(Параметры) Экспорт
	ТелоЗапроса = "<?xml version=""1.0"" encoding=""UTF-8""?>
		|<crs:call xmlns:crs=""http://v8.1c.ru/8.2/crs"" alias=""" + Параметры.ИмяХранилища + """ name=""UserManager_changeUser"" version=""" + Параметры.ВерсияПлатформы + """>
		|<crs:auth user=""" + Параметры.ПользовательХранилища + """ password=""" + Параметры.ХешПользователяХранилища + """ />
		|<crs:bind bindID=""" + Параметры.ИдентификаторПодключения + """/>
		|<crs:params>
		|<crs:user>
		|<crs:id value=""" + Параметры.ИдентификаторПользователя + """/>
		|<crs:name value=""" + Параметры.ИмяПользователя + """/>
		|<crs:password value=""" + Параметры.ХешПароля + """/>
		|<crs:rights value=""" + Параметры.Роль + """/>
		|</crs:user>
		|</crs:params>
		|</crs:call>";
	Возврат ТелоЗапроса;
КонецФункции

#КонецОбласти

#Область СлужебныеПроцедурыИФункции

Функция КорневойИдентификаторКонфигурации()
	Возврат "c9dd0f2c-4ed0-484a-baad-56494aa67301";
КонецФункции

#КонецОбласти