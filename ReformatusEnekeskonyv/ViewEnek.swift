//
//  ViewEnek.swift
//  ReformatusEnekeskonyv
//
//  Created by G on 05/10/2016.
//  Copyright © 2016 erdgabios. All rights reserved.
//

import UIKit

class ViewEnek: UIViewController {
    
    var esz = String()
    
    
    @IBOutlet weak var webView: UIWebView!
    @IBOutlet weak var enekszamAnavban: UILabel!
    
    
    
    @IBAction func fooldalra(_ sender: AnyObject) {
        dismiss(animated: true, completion: nil)
    }
    
    
    
    

    
  //      dismiss(animated: true, completion: nil)
        
  //  }

 
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        

        let eszSzam = esz
        let dalSzam = Int(eszSzam)
        
        if let eszSzamInt = Int(eszSzam) {
            
                let eszSzamString: String = String(eszSzamInt)
                enekszamAnavban.text = eszSzamString + ".Ének"
        }
        
        var zsoltarok:[Int:String] = [
            1:"<body style=\"background-color:lightgrey; font-size: 20px; font-family: Avenir;\"><h2 align = \"justify\"> 1. Aki nem jár hitlenek tanácsán</h2><br><h4 align = \"justify\">Kétféle életút<br>Bourgeois L.,  Strasbourg, 1539</h4><p align = \"justify\"> <span style=\"padding-left:2em\">1. Aki nem jár hitlenek tanácsán, És meg nem áll a bűnösök útán, A csúfolóknak nem ül ő székében, De gyönyörködik az Úr törvényében, És arra gondja mind éjjel, nappal: Ez ily ember nagy boldog bizonynyal.<br><span style=\"padding-left:2em\">2. Mert ő olyan, mint a jó termőfa, Mely a víz mellett vagyon plántálva, Ő idejében meghozza gyümölcsét, És el nem szokta hullatni levelét; Ekképpen amit ez ember végez, Minden dolgában megyen jó véghez.<br><span style=\"padding-left:2em\">3. De nem ígyen vannak a gonoszak; Hanem mint az apró por és polyvák, Melyek a széltől széjjelragadtatnak: Így az ítéletben meg nem állhatnak A gonoszok és kik bűnben élnek, Az igazak közt helyet nem lelnek.<br><span style=\"padding-left:2em\">4. Mert az Isten ismeri útukat, Az igazaknak érti dolgukat; Azért mindörökké ők megmaradnak; De akik csak a gonoszságban járnak, Azoknak nyilván mind elvész útuk: Mert  Istennek nem kell az ő dolguk.<br><br>Marot K., 1496-1544",
            2:"<body style=\"background-color:lightgrey; font-size: 20px; font-family: Avenir;\"><h2 align = \"justify\">2. Miért zúgolódnak a pogányok?</h2><br><h4 align = \"justify\">Isten Felkentjének diadalmas uralkodása<br>Bourgeois L.,  Genf, 1542</h4><p align = \"justify\"> <span style=\"padding-left:2em\">1. Miért zúgolódnak a pogányok? Mit forgatnak ő bolond elméjükben? A földi népeknek mi szándékok? Csak hiába valót űznek szívükben. E világi királyok egybegyűlnek, A fejedelmek tanácsot tartnak, Az Isten ellen erős kötést tesznek, És az ő Krisztusára támadnak.<br><span style=\"padding-left:2em\">2. Nagy fennen mondják: mit késünk ezzel? Jer, szaggasuk el ezeknek kötelét, És minden igájukat rontsuk el, Ne viseljünk többé rajtunk effélét! De az Úr Isten a magas mennyekben Csak neveti dolgukat azoknak, Csúfolja őket, ülvén szent székében, Kinek ezek semmit nem árthatnak.<br><span style=\"padding-left:2em\">3. Szolgáljatok e hatalmas Úrnak Jámbor élettel, igaz félelemmel, Örvendezzetek ő nagy voltának, De ezek is légyenek rettegéssel: Csókoljátok e néktek küldött fiat, Hogy erősen meg ne haragudjék; El ne mulasszátok parancsolatját, Mert szörnyűképpen el kell vesznetek!<br><br>Marot K., 1496-1544",
            3:"<body style=\"background-color:lightgrey; font-size: 20px; font-family: Avenir;\"><h2 align = \"justify\">3. Ó, mely sokan vannak, Akik háborgatnak</h2><br><h4 align = \"justify\">Reggeli ének nehéz időkben<br>Bourgeois L.,  Genf, 1551</h4><p align = \"justify\"> <span style=\"padding-left:2em\">1. Ó, mely sokan vannak, Akik háborgatnak Engemet, én Istenem! Nagy sok ellenségim És sok gyűlölőim Tusakodnak ellenem. Sokan azt állítják, Lelkemről azt mondják: Elveszett ennek dolga, Segítsége nincsen, Mert elhagyta Isten, Így szólnak bolond  módra.<br><span style=\"padding-left:2em\">2. Mert te, én Istenem, Paizsom vagy nekem, Ki életem megmented, És nagy tisztességre, Fejem dicsőségre Idővel fölemeled. Tehozzád, Úr Isten, Kiáltok szüntelen, És te megvidámítasz; Meghallgatsz kedvedből, Sion szent hegyéről Nagy segedelmet nyújtasz.<br><span style=\"padding-left:2em\">3. Ha ágyamban nyugszom, Csendesen aluszom, nincsen semmi félelmem. Midőn felserkenek, Semmit sem kesergek, Mert Isten őriz engem. Ha százezer népek Mind körülvennének Jobb és bal kezem felől, Ha rám ütnének is, Nem rettegnék mégis Semmi veszedelemtől.<br><span style=\"padding-left:2em\">4. Kelj föl, Uram, tarts meg, Ellenségim vond meg, Megtörvén ő fogokat! Mind összepaskolod És arcul csapdosod Az Isten-utálókat. Csak te vagy az Isten, Ki minden szükségben Meg tudsz szabadítani, Ki a te sereged Megtartod, szereted, És meg szoktad áldani.<br><br>Marot K., 1496-1544"]
        
        let zsoltarSzam = zsoltarok[dalSzam!]
        
        
        
        
        
//        let dal1 = "<body style=\"background-color:lightgrey; font-size: 20px; font-family: Avenir;\"><h2 align = \"justify\">2. Miért zúgolódnak a pogányok?</h2><br><h4 align = \"justify\">Isten Felkentjének diadalmas uralkodása<br>Bourgeois L.,  Genf, 1542</h4><p align = \"justify\"> <span style=\"padding-left:2em\">1. Miért zúgolódnak a pogányok? Mit forgatnak ő bolond elméjükben? A földi népeknek mi szándékok? Csak hiába valót űznek szívükben. E világi királyok egybegyűlnek, A fejedelmek tanácsot tartnak, Az Isten ellen erős kötést tesznek, És az ő Krisztusára támadnak.<br><span style=\"padding-left:2em\">2. Nagy fennen mondják: mit késünk ezzel? Jer, szaggasuk el ezeknek kötelét, És minden igájukat rontsuk el, Ne viseljünk többé rajtunk effélét! De az Úr Isten a magas mennyekben Csak neveti dolgukat azoknak, Csúfolja őket, ülvén szent székében, Kinek ezek semmit nem árthatnak.<br><span style=\"padding-left:2em\">3. Szolgáljatok e hatalmas Úrnak Jámbor élettel, igaz félelemmel, Örvendezzetek ő nagy voltának, De ezek is légyenek rettegéssel: Csókoljátok e néktek küldött fiat, Hogy erősen meg ne haragudjék; El ne mulasszátok parancsolatját, Mert szörnyűképpen el kell vesznetek!<br><br>Marot K., 1496-1544 <br><br>1. Úr Isten, az én imádságom, Kérlek, vegyed füleidbe És hallgass meg kérésembe! Én Istenem és én királyom, Értsd meg mondásom.2. Tekintsed meg esedezésem, És halld meg kiáltásomat, Midőn hívlak, királyomat! Meghallgatod én könyörgésem, Bizonnyal hiszem.3. Jó reggel meghallgatsz engemet, Uram, még virradta előtt, Idején a nap hogy feljött; Elődbe számlálom ügyemet, Várván kegyelmet.4. Mert egyedül te vagy oly Isten, Kinek a gonoszság nem kell; És aki gonosz bűnben él, Nem mehet hozzád semmiképpen, Míg él vétekben.5. Én pedig nagy jó reménységgel Bémegyek szent templomodba, És imádlak szent házadba; Nagy jóvoltodért félelemmel Szolgállak szívvel.6. Uram, vezérelj igazságban Ellenségimnek láttokra, Kik igyekeznek káromra; Oktass, hogy a te útaidban Járhassak jobban.7. És hogy azok mind örüljenek, Akik bíznak csak tebenned, Szívből szeretik szent neved: Engedd, hogy vígan Felségednek Énekeljenek.8. Az igazat mert te megáldod, Te nagy irgalmasságoddal Körülveszed, mint paizzsal; A gonosz ellen őt megtartod És oltalmazod.Marot K., 14961544</p>"
//        
        webView.loadHTMLString(zsoltarSzam!, baseURL: nil)
        

        
        
        
        
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
