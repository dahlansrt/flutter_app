/*
{
"id":"20",
"tanggal":"2019-07-21 00:00:00",
"nama_minggu":"MINGGU V DUNG TRINITATIS:",
"arti_minggu":"MINGGU V SETELAH TRINITATIS:",
"6":"P","9":"P","15":"P","18":"P",
"petugas_6":"Khotbah : Pdt. Arthur M. Sitorus\t \r\nLiturgis :St. Linda br Napitupulu\r\nWarta :St. Lamtiur br Gultom\r\nPenanggung Jawab : St. Mangara Gultom\r\nPersembahan : St. T.M. Butarbutar\r\n St. Anto Marpaung\r\n St. Edwin Padang\r\n St. Alexander Manurung\r\nPenerima Jemaat : St.MFJ.Tambunan \r\n St. Linda br Ritonga\r\nPemusik : Daniel Gultom\r\n Eveline Siahaan\r\nPuji-pujian : Melvina Gultom\r\n Jordan Pardede\r\n",
"petugas_9":"Khotbah :Pdt. Poltak Novis Napitupulu\r\nLiturgis :St. HP Manullang\r\nWarta :St. Buha Purba\r\nPenanggung Jawab : St Jordan Panggabean\r\nPersembahan : St. Debora br Situmorang\r\n St. Hulman Sidjabat\r\n St. Rumondang br Manurung\r\n St. Bintang br Manurung\r\n St. Ranto Lumbantoruan\r\n St. Charles Nadeak\r\nPenerima Jemaat : St. RJ Tampubolon\r\n St. Ginagan Nainggolan\r\nKebaktian S. Minggu : St Ramat Simanungkalit\r\nSermon GSM : Pendeta\r\nKebaktian Remaja :Pdt. Dina & Pendamping Remaja (Youth Camp)\r\n\r\nPemusik : Martline Simanjuntak\r\n Jessica Sihite\r\nPuji-pujian : Sihol Marasi Pasaribu\r\n Rentha Simaremare\r\n",
"petugas_15":"Khotbah :Pdt. Joshua M.F. Aritonang\t\r\nLiturgis :St. Erichson Matondang\r\nPenanggung Jawab :St. Saibun Sirait\r\nPersembahan : St Resdiana br Batubara\r\n St. Maria br Lumbanraja\r\n St. Nurmala br Situmorang\r\n St. Rahayu br Matondang\r\n St. Sahat Simatupang\r\n St. Humala Lubis\r\nPenerima Jemaat : St. H.Lumbantoruan\r\n St. Vera br Tambunan\r\nPuji-pujian : Astrid Napitupulu,\r\n Marlinang Sihombing,\r\n Eveline Tampubolon,\r\n Meta Sianturi,\r\nPemusik : Matius\r\nMultimedia : Eliza & Caroline Marpaung\r\nSoundman:Martin\r\n",
"petugas_18":"Khotbah :Pdt. Monru P. Nainggolan\r\nLiturgis :St. Annie br Sihombing\r\nWarta :St. Endang br Sinaga\r\nPenanggung Jawab :St. Freddy Simarmata\r\nPersembahan : St. Nurmala br Situmorang\r\n St. Michael Simbolon\r\n St Reynold Hutabarat\r\n St. Betty br Silitonga\r\nPenerima Jemaat : St. Hiras Sianturi\r\n St. Bernhard EP Siahaan\r\n\r\nPemusik : Shinta Siagian\r\n William Rajagukguk\r\nPuji-pujian : Happy Tampubolon\r\n Yosita Simangunsong\r\n",
"created_at":"2019-07-17 16:50:41",
"updated_at":"2019-07-17 16:50:41"}
*/
/*
final responseBody = '{"responseId":"123456789","queryResult":{"queryText":"Hello","action":"input.welcome","parameters":{},"allRequiredParamsPresent":true,"fulfillmentText":"Greetings! How can I assist?","fulfillmentMessages":[{"text":{"text":["Hello there. I am chat bot So shall we get started?"]}},{"quickReplies":{"quickReplies":["Yes","No"]}}],"outputContexts":[{"name":"xyz","lifespanCount":5}],"intent":{"name":"xyz","displayName":"Default Welcome Intent"},"intentDetectionConfidence":1,"diagnosticInfo":{"webhook_latency_ms":5},"languageCode":"en"},"webhookStatus":{"message":"Webhook execution successful"}}';

void main() {
  final Map<String, dynamic> responseJson = json.decode(responseBody);

  print("DATA \n ${
      responseJson['queryResult']
        ['fulfillmentMessages'][0]
          ['text']
            ['text'][0]
      }"
 );
}
*/
class TataIbadah {
  final String id;
  final String nama_minggu;
  final String arti_minggu;
  final String tata_ibadah_6;
  final String tata_ibadah_9;
  final String tata_ibadah_15;
  final String tata_ibadah_18;
  final String petugas_6;
  final String petugas_9;
  final String petugas_15;
  final String petugas_18;

  TataIbadah(
      {this.id,
      this.nama_minggu,
      this.arti_minggu,
      this.tata_ibadah_6,
      this.tata_ibadah_9,
      this.tata_ibadah_15,
      this.tata_ibadah_18,
      this.petugas_6,
      this.petugas_9,
      this.petugas_15,
      this.petugas_18});

  factory TataIbadah.fromJson(Map<String, dynamic> json) {
    return TataIbadah(
        id: json['id'],
        nama_minggu: json['nama_minggu'],
        arti_minggu: json['arti_minggu'],
        tata_ibadah_6: json['6'],
        tata_ibadah_9: json['9'],
        tata_ibadah_15: json['15'],
        tata_ibadah_18: json['18'],
        petugas_6: json['petugas_6'],
        petugas_9: json['petugas_9'],
        petugas_15: json['petugas_15'],
        petugas_18: json['petugas_18']);
  }
}
