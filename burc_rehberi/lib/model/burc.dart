class Burc{
  final String _burcAdi;
  final String _burcTarih;
  final String _burcDetay;
  final String _burcKucukResim;
  final String _burcBuyukResim;
  
  get burcAdi => this._burcAdi;
  get burcTarih => this._burcTarih;
  get burcDetay => this._burcDetay;
  get burcKucukResim => this._burcKucukResim;
  get burcBuyukResim => this._burcBuyukResim;

  Burc(this._burcAdi, this._burcTarih, this._burcDetay, this._burcKucukResim, this._burcBuyukResim);
}