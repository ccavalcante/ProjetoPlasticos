unit uDmImg;

interface

uses
  SysUtils, Classes, ImgList, Controls, System.ImageList;

type
  TDmImg = class(TDataModule)
    imgManu1: TImageList;
    imgTabs: TImageList;
    ImgMenus: TImageList;
    imgManu2: TImageList;
    imgGeralPequenas: TImageList;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmImg: TDmImg;

implementation

{$R *.dfm}

end.
