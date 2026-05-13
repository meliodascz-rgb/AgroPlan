abstract final class AppStrings {
  // App
  static const appName    = 'AgroPlan';
  static const appVersion = 'AI · v 0.1';

  // Generic
  static const done = 'Hotovo';
  static const skip = 'Přeskočit';
  static const next = 'Dále';
  static const start = 'Začít';
  static const or   = 'NEBO';
  static const noData = '—';

  // Splash
  static const splashLoading = 'NAČÍTÁNÍ ZNALOSTÍ PŮDY…';

  // Walkthrough
  static const walkthroughTitle1 = 'Plánujte chytře';
  static const walkthroughBody1  =
      'Navrhněte rozmístění plodin na sezónu přímo v mobilní aplikaci — rychle a přehledně.';
  static const walkthroughTitle2 = 'Chytrá výsadba';
  static const walkthroughBody2  =
      'Aplikace navrhne, které rostliny si pomáhají, a varuje před konflikty přímo v mřížce.';
  static const walkthroughTitle3 = 'Střídání plodin';
  static const walkthroughBody3  =
      'Sledujte historii záhonů a plánujte rotaci tak, aby půda regenerovala každou sezónu.';

  // Auth / Login
  static const loginTitle         = 'Vítejte zpět';
  static const loginSubtitle      = 'Přihlaste se a pokračujte v plánování sezóny.';
  static const email              = 'E-MAIL';
  static const emailHint          = 'jan@zahrada.cz';
  static const password           = 'HESLO';
  static const passwordHint       = '••••••••';
  static const forgotPassword     = 'Zapomenuté?';
  static const signIn             = 'Přihlásit se';
  static const noAccount          = 'Nemáte účet? ';
  static const createAccount      = 'Vytvořit účet';
  static const continueWithGoogle = 'Pokračovat s Google';
  static const continueWithApple  = 'Pokračovat s Apple';

  // Dashboard
  static const dashboardGreeting   = 'Dobré ráno';
  static const dashboardMyFields   = 'MOJE POLE';
  static const dashboardNoFields   =
      'Zatím žádné pole. Přidejte první pole tlačítkem +.';
  static const dashboardCreateSoon = 'Vytvoření pole — brzy k dispozici';
  static const aiTipLabel          = 'AI TIP';
  static const aiTipShowProposal   = 'Zobrazit návrh';
  static const aiTipHide           = 'Skrýt';

  // Date strings used on dashboard header
  static const weekdays = [
    'Pondělí', 'Úterý', 'Středa', 'Čtvrtek',
    'Pátek', 'Sobota', 'Neděle',
  ];
  static const months = [
    'Ledna', 'Února', 'Března', 'Dubna', 'Května', 'Června',
    'Července', 'Srpna', 'Září', 'Října', 'Listopadu', 'Prosince',
  ];

  // Catalog
  static const catalogTitle      = 'Katalog rostlin';
  static const catalogDatabase   = 'DATABÁZE';
  static const catalogSpecies    = 'DRUHŮ';
  static const catalogSearchHint = 'Hledat rostlinu…';
  static const catalogNoResults  = 'Žádné výsledky';

  // Catalog filter chip display labels (keys).
  // The stored tag values (DB) are separate — kept in filter_chips.dart.
  static const filterAll      = 'Vše';
  static const filterShade    = 'Do stínu';
  static const filterNitrogen = 'Fixují dusík';
  static const filterLegumes  = 'Luskoviny';
  static const filterHerbs    = 'Bylinky';
  static const filterRoot     = 'Kořenová';
  static const filterLeafy    = 'Listová';
  static const filterFruit    = 'Plodová';

  // Plant detail
  static const plantNotFound  = 'Rostlina nenalezena';
  static const goodNeighbors  = '● DOBŘÍ SOUSEDÉ';
  static const conflicts      = '● KONFLIKTY';

  // Smart Grid Editor
  static const fieldLabel     = 'POLE';
  static const legendGood     = 'DOBRÝ';
  static const legendConflict = 'KONFLIKT';
  static const legendNeutral  = 'NEUTRÁL';
  static const plantRailTitle = 'Plodiny';
  static const tapCellHint    = 'KLEPNĚTE NA BUŇKU →';

  // Season switcher
  static const seasonSpring = 'Jaro';
  static const seasonAutumn = 'Podzim';

  // Field settings
  static const fieldSettings  = 'NASTAVENÍ POLE';
  static const cellSizeLabel  = 'VELIKOST BUŇKY';
  static const rename         = 'Přejmenovat';
  static const deleteField    = 'Smazat pole';

  // Needs bar
  static const needsSun   = 'SLUNCE';
  static const needsWater = 'ZÁLIVKA';
  static const needsSpace = 'PROSTOR';

  // Crop rotation
  static const cropRotation     = 'STŘÍDÁNÍ PLODIN';
  static const rotationBefore   = 'PŘED';
  static const rotationThisYear = 'TENTO ROK';
  static const rotationAfter    = 'PO';

  // Profile
  static const profile         = 'Profil';
  static const freeTier        = 'ZDARMA';
  static const preferences     = 'PŘEDVOLBY';
  static const climateZone     = 'Klimatická zóna';
  static const units           = 'Jednotky';
  static const metric          = 'Metrické';
  static const language        = 'Jazyk';
  static const czech           = 'Čeština';
  static const darkMode        = 'Tmavý režim';
  static const synchronization = 'SYNCHRONIZACE';
  static const connectionStatus = 'Stav připojení';
  static const online          = '● Online';
  static const syncNow         = 'Synchronizovat teď';
  static const account         = 'ÚČET';
  static const subscription    = 'Předplatné';
  static const upgrade         = 'Upgradovat';
  static const signOut         = 'Odhlásit se';

  // Bottom navigation
  static const navOverview = 'Přehled';
  static const navCatalog  = 'Katalog';
  static const navProfile  = 'Profil';

  // Create field modal
  static const createFieldTitle    = 'Nové pole';
  static const fieldNameLabel      = 'NÁZEV POLE';
  static const fieldNameHint       = 'Přední záhon';
  static const colsLabel           = 'SLOUPCE';
  static const rowsLabel           = 'ŘÁDKY';
  static const createFieldSubmit   = 'Vytvořit pole';
  static const createFieldError    = 'Nepodařilo se vytvořit pole';

  // Field actions
  static const cancel              = 'Zrušit';
  static const deleteConfirmTitle  = 'Smazat pole?';
  static const deleteConfirmBody   = 'Tato akce je nevratná. Všechny plodiny v tomto poli budou smazány.';
  static const deleteConfirmAction = 'Smazat';
  static const renameFieldHint     = 'Nový název';

  // Editor
  static const errorSavingPlacement = 'Chyba při ukládání rostliny';

  // Dashboard empty state
  static const dashboardEmptyTitle  = 'Začněte přidáním pole';
  static const dashboardEmptyBody   = 'Klepněte na + a vytvořte svůj první záhon.';
}
