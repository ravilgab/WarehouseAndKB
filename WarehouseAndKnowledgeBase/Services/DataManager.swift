//
//  DataManager.swift
//  WarehouseAndKnowledgeBase
//
//  Created by Ravil on 12.09.2021.
//

class DataManager {
    
    static let shared = DataManager()
    
    let contactTitles = [
        "МТС поддержка",
        "CRM поддержка"
    ]
    
    let contactPhoneNumbers = [
        "8(800)234-05-24",
        "8(800)7000-670"
    ]
    
    let contactEmails = [
        "inna.azarova_ext@novartis.com",
        "crm.support@something.com"
    ]
    
    let kbTitles = ["SCCM fix",
                    "Как изменить свою фамилию в почте",
                    "Если компьютер выбило из домена",
                    "Получить доступ к Survey Gizmo"]
    
    let kbArticles = [
        """
        Корректная рабочая версия - 4.9971


        1.  Закрываем все активные приложения: Outlook, Teams, OneDrive и все что можно закрыть.

        2. Удаляем "Crypto-pro" (можно не перезагружаться) :

        Открываем Control Panel - Programs and Features - находим Crypto-pro - удаляем

        Если не удаляется, то на диске G, в папке Public лежит установочный файл с версией программы 4.9971. (если там нет, то можно её скачать с сайта Crypto-pro => ПУНКТ 6 этой инструкции). Переносим его в папку Downloads и устанавливаем (Если предложит только ВОССТАНОВЛЕНИЕ, то выбираем этот пункт и устанавливаем). После установки, снова запускаем этот файл и уже выбираем пунк - УДАЛЕНИЕ

        2. Устанавливаем SCCM:

        - Идем на портал http://go/sdportal
        - Выбарем Connect - Manage
        - Вводим CR и нажимем Ping Remote Computer, далее Connect

        Ждём пока соберётся информация (30 секунд) и после :

        - Нажимаем на пункт SCCM / Nomad Client, далее SCCM Client Health и нажимаем на Reinstall SCCM client и ждем пока не появиться надпись, что процесс успешно запущен.

        3. Открываем Диспечер задач и находим там процесс CCMSETUP.EXE и ждём пока он пропадет (~ 10-15 минут)

        Проверяем, что Software center запускается.  Далее делаем SCCM ACTIONS через Help desk tool.

        4. Устанавливаем Crypto-pro версии 4.9971 найдя ее на диске G или скачав с официального сайта, пункт 6 этой инструкции

        5. Делаем диагностику с официального сайта для контур ДИАДОК  (сертификаты подхватит сам, на лету):

        https://h.kontur.ru/diadoc или через  контур установочный диск

        Перезагружаемся.

        6. ДОПОЛНЕНИЕ

        Crypto-pro можно сказать с официального сайта по ссылке:

        https://www.cryptopro.ru/sites/default/files/private/csp/40/9971/CSPSetup.exe

        Логин и пароль для входа на сайт crypto-pro:

        LOGIN: help@skbcontur.ru
        PASSWORD: skb
        """,
        """
        В приложеной инструкции есть вся информация. Можно также воспользоваться порталом https://go/ONS и найти создание реквеста по ключевому названию: Request Standard Named AD Account and Email Account",
        """,
        """
        В прикрепленном файле инструкция + сама утилита.
        """,
        """
        Для получения лицензии для использования Survey Gizmo, нужно создать реквест на лицензию. Он делается 2-3 дня. Если им не пользоваться, то лицензия автоматически снимается.

        Сделать запрос на лицензию:

        https://novartiscorp.service-now.com/itsp?id=itsp_sc_cat_item&sys_id=43d773b3db2558949d477ba532961944

        или

        https://go/ru/gizmo


        Если нужен простой опрос, то можно воспользоваться Forms от Microsoft - доступ к Microsoft Forms предоставлен по умолчанию, в рамках корпоративных лицензий O365 и активного аккаунта AD.

        http://go/forms
        """
    ]
    
    private init() {}
}
