object FormChamados: TFormChamados
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = '...::: REGISTRO DE ORDEM DE SERVI'#199'O :::...'
  ClientHeight = 757
  ClientWidth = 1024
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1024
    Height = 41
    Align = alTop
    Caption = 'REGISTRO DE ORDEM DE SERVI'#199'O'
    Color = clHighlight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHighlightText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 1024
    Height = 664
    Align = alClient
    TabOrder = 1
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 1022
      Height = 64
      Align = alTop
      TabOrder = 0
      object GroupBox1: TGroupBox
        Left = 1
        Top = 1
        Width = 1020
        Height = 62
        Align = alClient
        Caption = 'OP'#199#213'ES DE BUSCA'
        TabOrder = 0
        object Label1: TLabel
          Left = 12
          Top = 16
          Width = 63
          Height = 13
          Caption = 'Buscar por:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object CbxBusca: TComboBox
          Left = 12
          Top = 35
          Width = 189
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 0
          Text = 'USU'#193'RIO CRIADOR'
          OnChange = CbxBuscaChange
          Items.Strings = (
            'USU'#193'RIO CRIADOR'
            'USU'#193'RIO RESPONS'#193'VEL'
            'TIPO DE CHAMADO'
            'PRIORIDADE DE CHAMADO'
            'SITUA'#199#195'O DE CHAMADO'
            'DATA DE CADASTRO'
            'DATA DE ENTREGA'
            'DATA DE PREVIS'#195'O')
        end
        object CbxConteudo: TComboBox
          Left = 211
          Top = 35
          Width = 798
          Height = 21
          Style = csDropDownList
          TabOrder = 1
          OnChange = CbxConteudoChange
        end
      end
    end
    object PanelCad: TPanel
      Left = 1
      Top = 372
      Width = 1022
      Height = 291
      Align = alBottom
      TabOrder = 1
      object ToolBar1: TToolBar
        Left = 1
        Top = 1
        Width = 1020
        Height = 40
        ButtonHeight = 39
        ButtonWidth = 69
        Caption = 'ToolBar1'
        TabOrder = 0
        object BitBtnUsuarioInserir: TBitBtn
          Left = 0
          Top = 0
          Width = 75
          Height = 39
          Caption = 'INSERIR'
          DoubleBuffered = True
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            20000000000000040000120B0000120B00000000000000000000FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF0041924E233D8F497D3A8C44DB368940F332873CF32F84
            37DB2C81337D287F3023FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF0049995853459653E6419950FF7DC28FFF96D0A6FF96CFA6FF78BE
            89FF368D42FF2C8134E6297F3053FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00519F61534D9C5DF464B478FFA8DBB5FF87CC98FF66BC7DFF64BA7CFF86CB
            98FFA5D9B4FF58AA6BFF2C8134F4297F3053FFFFFF00FFFFFF00FFFFFF0059A6
            6B2256A366E56AB97DFFA8DBB2FF60BC77FF5CBA73FF59B870FF59B56FFF58B5
            6FFF5BB774FFA5D9B3FF5AAA6CFF2C8234E5297F3022FFFFFF00FFFFFF005DA9
            707E53AB68FFAADDB4FF64C179FF5FBE71FF60BC77FFFFFFFFFFFFFFFFFF59B8
            70FF58B56EFF5CB774FFA6DAB4FF388F43FF2C82347EFFFFFF00FFFFFF0061AC
            75DB8ACC98FF89D396FF6BC67AFF63C170FF55AB65FFFFFFFFFFFFFFFFFF59B8
            70FF59B870FF5BB972FF85CC97FF7BBE8DFF308539DBFFFFFF00FFFFFF0065AF
            7AF6A9DDB3FF7DCF8AFF75CC81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFF59B870FF67BE7DFF9CD4ABFF34883DF6FFFFFF00FFFFFF0069B2
            7EF6B6E2BEFF8BD597FF7AC986FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFF59B870FF69C17EFF9DD4AAFF388B42F6FFFFFF00FFFFFF006DB5
            83DBACDDB6FFA6DFAFFF81CB8CFF7CC986FF6EBD79FFFFFFFFFFFFFFFFFF5BAC
            6AFF60BC77FF5CBA73FF8BD199FF80C592FF3C8E47DBFFFFFF00FFFFFF0070B8
            877E85C797FFD2EED7FF95D9A0FF8AD394FF7FC889FFFFFFFFFFFFFFFFFF79CD
            85FF6BC37CFF6FC77EFFACDFB5FF459E57FF40914C7EFFFFFF00FFFFFF0073BA
            8A2270B887E5AADAB7FFD8F1DCFF92D89DFF88CD93FF84CC8EFF8BD496FF8AD4
            95FF83D28EFFAFE0B7FF6BB97DFF489856E544945122FFFFFF00FFFFFF00FFFF
            FF0073BB8B5370B887F4AFDCBBFFDCF2E0FFB6E4BDFF9BDBA5FF96D9A0FFA5DF
            AFFFC0E8C5FF79C28AFF509E5FF44C9B5B53FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF0073BB8B5371B887E694CEA4FFC3E6CBFFCFEBD4FFC9E9CEFFAFDD
            B8FF6DB97FFF58A569E654A16553FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF0074BB8B2371B9887D6EB684DB6AB380F367B17CF363AE
            77DB60AB737D5CA86E23FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
          Layout = blGlyphTop
          ParentDoubleBuffered = False
          TabOrder = 3
          OnClick = BitBtnUsuarioInserirClick
        end
        object BitBtnUsuarioEditar: TBitBtn
          Left = 75
          Top = 0
          Width = 75
          Height = 39
          Caption = 'EDITAR'
          DoubleBuffered = True
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            20000000000000040000120B0000120B00000000000000000000FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00113D55F7285F87FB4988BDFB428DBCC12D77B322FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF002B6583FB94C7F9FF91C9F9FF4185C9FF1C64AAF32E79
            B92FFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A97151A9C38E
            68FFC08B66FFBE8864FF4389AAFFE0F2FFFF549AD8FF1A7ABEFF4998C5FF4081
            B6FF99796BFFAB7554FFA97353FFA97151FFA97151A9FFFFFF00C8926CFFFFFF
            FFFFFFFFFFFFFFFFFFFFA7C5D9FF7AB6D5FF90B7D1FF55C9E4FF5BDFF5FF78D0
            EDFF519DDDFFE4F0FAFFFFFFFFFFFFFFFFFFA97251FFFFFFFF00CA946EFFFFFF
            FFFFFFFFFFFFFFFFFEFFFFFFFDFFB3D6E6FF76BAD7FFC2F6FDFF63DFF7FF5DE2
            F8FF79D3F0FF4A99DCFFE3EEF5FFFFFFFFFFAA7353FFFFFFFF00CC976FFFFFFF
            FFFFFFFFFCFFFFFFFDFFFEFEFCFFFEFEFCFFB0D5E4FF77CBE7FFC7F7FDFF5EDC
            F5FF5AE1F7FF7BD4F1FF4B9ADDFFD6E8F7FFAC7554FFFFFFFF00D19C73FFFFFF
            FFFFFEFEFCFFFEFEFCFFFEFEFCFFFDFDFBFFFDFDFBFFBEE7F1FF79D3EEFFC7F7
            FDFF5FDCF5FF5BE2F7FF7AD6F2FF51A2E2FF9C7E6EFFFFFFFF00D49E75FFFFFF
            FFFFFEFEFCFFFDFDFBFFFDFDFCFFFDFDFBFFFDFDF9FFFCFCF8FFBEE6F2FF7DD4
            EEFFC4F6FDFF6CDDF6FF6DCAEDFF63A3D7FF6399C9FF5192CA26D5A076FFFFFF
            FFFFFDFDFCFFFDFDFBFFFDFDFAFFFCFCF9FFFCFBF7FFFBF9F5FFFBF8F4FFB3E1
            EDFF81D6EEFFB2E3F9FF8BC0E7FFAED3F6FFC4E0FCFF669FD3F7D8A279FFFFFF
            FFFFFDFDFAFFFCFCFAFFFCFBF9FFFBFAF6FFFBF8F5FFFBF7F4FFFBF6F1FFF8F4
            EEFFABDDE8FF77BEE7FFB4D2F0FFE5F3FFFFACD2EFFF488CC7E8D9A379FFFFFF
            FFFFFCFBF9FFFCFBF8FFFBF9F7FFFBF7F4FFFAF7F2FFF9F5F0FFF7F3EDFFF6EF
            EAFFF5EBE7FFB4D7E2FF58A5D8FF85B1DBFF469DD0FF2B95D15EDBA47AFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBD8763FFFFFFFF00DCA77BFFDCA7
            7BFFDCA77BFFDCA77BFFDCA77BFFDCA77BFFDCA77BFFDCA77BFFDCA77BFFDCA7
            7BFFDCA77BFFDCA77BFFDCA77BFFDCA77BFFC08B66FFFFFFFF00DDAC85FDE8B9
            92FFE8B992FFE8B992FFE8B992FFE8B992FFE8B992FFE8B992FFE8B992FFE8B9
            92FFE8B992FFE8B992FFE8B992FFE8B992FFC1906FFDFFFFFF00A971516BDDB1
            8DF4DCA77BFFDCA67AFFDAA47AFFD8A279FFD5A076FFD49E75FFD29D73FFCF9A
            72FFCE9970FFCB966FFFC9946CFFC49A7AF4A971516BFFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
          Layout = blGlyphTop
          ParentDoubleBuffered = False
          TabOrder = 2
          OnClick = BitBtnUsuarioEditarClick
        end
        object BitBtnUsuarioSalvar: TBitBtn
          Left = 150
          Top = 0
          Width = 75
          Height = 39
          Caption = 'SALVAR'
          DoubleBuffered = True
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            20000000000000040000120B0000120B00000000000000000000BA6A368FB969
            35B5B86935EEB76835FFB56835FFB46734FFB26634FFB06533FFAE6433FFAC63
            32FFAA6232FFA96132FFA86031FFA76031FEA66031F1A86131C4BA6A35DEEBC6
            ADFFEAC5ADFFFEFBF8FFFEFBF8FFFEFBF8FFFEFBF8FFFEFBF8FFFEFBF8FFFEFB
            F8FFFEFBF8FFFEFBF8FFFEFBF8FFC89A7CFFC79879FFA76031EDBA6B37FEEDCA
            B3FFE0A27AFFFEFAF7FF62C088FF62C088FF62C088FF62C088FF62C088FF62C0
            88FF62C088FF62C088FFFDF9F6FFCA8D65FFC99B7CFFA76031FEBB6C38FFEECC
            B6FFE1A27AFFFEFAF7FFBFDCC2FFBFDCC2FFBFDCC2FFBFDCC2FFBFDCC2FFBFDC
            C2FFBFDCC2FFBFDCC2FFFDF9F6FFCD9068FFCC9E81FFA86132FFBB6B38FFEFCE
            B8FFE1A279FFFEFAF7FF62C088FF62C088FF62C088FF62C088FF62C088FF62C0
            88FF62C088FF62C088FFFDF9F6FFCF936AFFCEA384FFAA6132FFBA6A36FFEFD0
            BBFFE2A27AFFFEFBF8FFFEFBF8FFFEFBF8FFFEFBF8FFFEFBF8FFFEFBF8FFFEFB
            F8FFFEFBF8FFFEFBF8FFFEFBF8FFD3966DFFD2A78AFFAB6232FFBB6A36FFF0D2
            BEFFE2A37AFFE2A37AFFE1A37AFFE2A37BFFE1A37BFFE0A178FFDE9F77FFDD9F
            76FFDC9D74FFD99B72FFD89971FFD69970FFD5AB8EFFAD6333FFBB6A36FFF2D5
            C2FFE3A37AFFE3A37AFFE2A37BFFE2A37BFFE2A47BFFE1A279FFE0A178FFDEA0
            77FFDE9E75FFDC9D74FFDA9B73FFD99B73FFDAB095FFAF6433FFBB6A36FFF2D8
            C5FFE3A47BFFE3A37AFFE3A47AFFE2A47BFFE2A37BFFE1A37BFFE1A279FFDFA0
            77FFDE9F76FFDD9E74FFDB9C72FFDC9D74FFDDB59AFFB16534FFBB6B36FFF4D9
            C7FFE6A67DFFC88C64FFC98D65FFC98E67FFCB926CFFCB926DFFCA9069FFC88C
            65FFC88C64FFC88C64FFC88C64FFDA9C74FFE1BA9FFFB36634FFBB6B36FEF4DC
            C9FFE7A77DFFF9ECE1FFF9ECE1FFF9EDE3FFFCF4EEFFFDFAF7FFFDF7F3FFFAED
            E5FFF7E7DBFFF7E5D9FFF6E5D8FFDEA077FFE4BEA4FFB46734FFBC6B36FAF5DD
            CCFFE7A87EFFFAF0E8FFFAF0E8FFC98D66FFFAF0E9FFFDF8F3FFFEFAF8FFFCF4
            EFFFF9E9DFFFF7E7DBFFF7E5D9FFE0A278FFE7C2A9FFB66835FFBC6B36F0F6DF
            D0FFE8A87EFFFCF6F1FFFCF6F1FFC88C64FFFAF1E9FFFBF4EEFFFDFAF7FFFDF9
            F6FFFAF0E8FFF8E8DDFFF7E6DBFFE1A37AFFEFD5C3FFB76935FEBC6B36D8F6DF
            D1FFE9AA80FFFEFAF6FFFDFAF6FFC88C64FFFBF3EEFFFBF1EAFFFCF6F2FFFEFB
            F8FFFCF6F1FFF9ECE2FFF8E7DBFFEED0BAFFECD0BDFFBB703EF8BC6B369BF6E0
            D1FFF7E0D1FFFEFBF8FFFEFBF7FFFDF9F6FFFCF5F0FFFAF0EAFFFBF2EDFFFDF9
            F6FFFDFAF7FFFBF1EBFFF8E9DFFEECD0BDFBC9895EECB5693563BC6B3671BC6B
            3690BC6B36CCBC6B36EEBC6B36FABB6B36FEBB6B36FFBB6A36FFBB6A36FFBC6C
            39FFBD6E3BFFBB6D3AFFBB6B38EFBB703ECBB6693554FFFFFF00}
          Layout = blGlyphTop
          ParentDoubleBuffered = False
          TabOrder = 1
          OnClick = BitBtnUsuarioSalvarClick
        end
        object BitBtnUsuarioCancelar: TBitBtn
          Left = 225
          Top = 0
          Width = 75
          Height = 39
          Caption = 'CANCELAR'
          DoubleBuffered = True
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            20000000000000040000120B0000120B00000000000000000000FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF000000F1EC0000F1FF0000F1FF0000F1FF0000EFFF0000
            EFFF0000EDFF0000EDEDFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF000000F5EC1A20F5FF3C4CF9FF3A49F8FF3847F8FF3545F8FF3443
            F7FF3242F7FF141BF1FF0000EDE8FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF000000F7EC1D23F9FF4453FAFF2429F9FF1212F7FF0F0FF6FF0C0CF5FF0909
            F5FF161BF5FF3343F7FF141BF1FF0000EDE8FFFFFF00FFFFFF00FFFFFF000000
            F9EC1F25FAFF4A58FBFF4247FBFFC9C9FDFF3B3BF9FF1313F7FF1010F6FF3333
            F7FFC5C5FDFF3035F7FF3444F7FF141BF2FF0000EDE8FFFFFF00FFFFFF000000
            FBFF4F5DFDFF3237FBFFCBCBFEFFF2F2FFFFEBEBFEFF3B3BF9FF3939F8FFEAEA
            FEFFF1F1FEFFC5C5FDFF181DF6FF3343F7FF0000EFFFFFFFFF00FFFFFF000000
            FDFF525FFDFF2828FCFF4747FCFFECECFFFFF2F2FFFFECECFFFFECECFEFFF1F1
            FFFFEAEAFEFF3434F7FF0B0BF5FF3545F8FF0000EFFFFFFFFF00FFFFFF000000
            FDFF5562FEFF2C2CFDFF2929FCFF4848FCFFEDEDFFFFF2F2FFFFF2F2FFFFECEC
            FEFF3A3AF9FF1212F7FF0F0FF6FF3848F8FF0000F1FFFFFFFF00FFFFFF000000
            FDFF5764FEFF3030FDFF2D2DFDFF4B4BFCFFEDEDFFFFF2F2FFFFF2F2FFFFECEC
            FFFF3D3DF9FF1616F8FF1313F7FF3C4BF8FF0000F1FFFFFFFF00FFFFFF000000
            FFFF5A67FEFF3333FEFF5050FDFFEDEDFFFFF3F3FFFFEDEDFFFFEDEDFFFFF2F2
            FFFFECECFEFF3E3EFAFF1717F8FF3F4EF9FF0000F1FFFFFFFF00FFFFFF000000
            FFFF5B68FFFF4347FEFFCFCFFFFFF3F3FFFFEDEDFFFF4C4CFCFF4A4AFCFFECEC
            FFFFF2F2FFFFCACAFEFF2A2FFAFF4251FAFF0000F3FFFFFFFF00FFFFFF000000
            FFEB262BFFFF5D6AFFFF585BFFFFCFCFFFFF5252FEFF2F2FFDFF2C2CFDFF4B4B
            FCFFCCCCFEFF484CFBFF4957FBFF1D23F9FF0000F5EBFFFFFF00FFFFFF00FFFF
            FF000000FFEB262BFFFF5D6AFFFF4347FFFF3434FEFF3232FEFF3030FDFF2D2D
            FDFF383CFCFF4F5DFCFF1F25FAFF0000F7EBFFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF000000FFEB262BFFFF5C69FFFF5B68FFFF5A67FEFF5865FEFF5663
            FEFF5461FEFF2227FCFF0000FBF2FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF000000FFEC0000FFFF0000FFFF0000FFFF0000FDFF0000
            FDFF0000FDFF0000FDECFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
          Layout = blGlyphTop
          ParentDoubleBuffered = False
          TabOrder = 4
          OnClick = BitBtnUsuarioCancelarClick
        end
        object BitBtnUsuarioDeletar: TBitBtn
          Left = 300
          Top = 0
          Width = 75
          Height = 39
          Caption = 'DELETAR'
          DoubleBuffered = True
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            20000000000000040000120B0000120B00000000000000000000FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF003F54C3233A50C27D3853BEDB3551BDF3304BBCF32E4E
            B8DB2B4CB77D2748B523FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF004658C8534255C6E63C52CCFF757AE8FF8F92EEFF8F92EEFF7178
            E4FF334DC1FF2B4AB7E6294BB553FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF004D5ACD534959CBF45C65E0FFA1A6F5FF7E86EFFF5B63E9FF595DE7FF7D84
            EEFF9EA0F4FF515DD7FF2B4AB7F4294BB553FFFFFF00FFFFFF00FFFFFF00545F
            D2225361CFE5616BE3FFA1ACF5FF545FECFF505CEAFF4D59E9FF4E59E6FF4C56
            E6FF5056E6FF9EA2F4FF5460D6FF2A4AB8E5294BB522FFFFFF00FFFFFF005860
            D47E4B56DBFFA2ABF6FF5664F0FF5266EEFF4D59E9FF4D59E9FF4D59E9FF4D59
            E9FF4C58E6FF525AE6FF9FA3F5FF3450C4FF2A4AB87EFFFFFF00FFFFFF005C62
            D7DB818CEEFF7E91F7FF5D73F3FF4D59E9FF4D59E9FF4D59E9FF4D59E9FF4D59
            E9FF4D59E9FF4F5BE9FF7B83F0FF757BE2FF2E4BBADBFFFFFF00FFFFFF005F63
            DAF6A1ABF7FF7086F8FF6882F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFF4D59E9FF5C66EAFF969CF1FF3250BCF6FFFFFF00FFFFFF006469
            DBF6AFB9F9FF7F93FAFF7085F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFF4D59E9FF5E6AEEFF969DF1FF364FBEF6FFFFFF00FFFFFF00676A
            DEDBA5AFF5FF9DABFAFF778CF0FF545FECFF545FECFF545FECFF545FECFF545F
            ECFF545FECFF6377F2FF818EF4FF787FE9FF3A53C0DBFFFFFF00FFFFFF006A69
            E07E7D83EAFFCDD4FCFF8B9DFAFF7E93F7FF758AEEFF6C84F6FF6C84F6FF6C84
            F6FF6C84F6FF6379F3FFA4AFF8FF3E4FD0FF3E54C27EFFFFFF00FFFFFF006C6C
            E1226A69E0E5A3A7F3FFD4DBFDFF879AFAFF7F91F0FF7A8EF1FF7F94F8FF7E92
            F9FF768CF8FFA8B6F8FF636EE3FF4557C7E54156C522FFFFFF00FFFFFF00FFFF
            FF006D6CE3536A69E0F4AAADF2FFD8DCFDFFAEBAFAFF91A3FAFF8B9DFAFF9CA9
            FBFFBAC7FCFF707BE9FF4C5BCCF44858CA53FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF006D6CE3536A6ADFE68E93EDFFBEC3F8FFCCD3F9FFC4CBF9FFAAB4
            F4FF6670E2FF535ED1E6505DCE53FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF006D6DE2236B6AE17D686ADDDB6364DCF36164DAF35D63
            D9DB5B63D67D5862D423FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
          Layout = blGlyphTop
          ParentDoubleBuffered = False
          TabOrder = 0
          OnClick = BitBtnUsuarioDeletarClick
        end
      end
      object PanelCadastro: TPanel
        Left = 1
        Top = 41
        Width = 1020
        Height = 249
        Align = alClient
        TabOrder = 1
        object ScrollBoxCadastro: TScrollBox
          Left = 1
          Top = 1
          Width = 1018
          Height = 247
          Align = alClient
          TabOrder = 0
          object Label2: TLabel
            Left = 12
            Top = 6
            Width = 78
            Height = 13
            Caption = 'Usu'#225'rio Criador:'
          end
          object Label3: TLabel
            Left = 183
            Top = 6
            Width = 104
            Height = 13
            Caption = 'Usu'#225'rio Respons'#225'vel:'
          end
          object Label4: TLabel
            Left = 355
            Top = 6
            Width = 87
            Height = 13
            Caption = 'Tipo de Chamado:'
          end
          object Label5: TLabel
            Left = 618
            Top = 5
            Width = 52
            Height = 13
            Caption = 'Prioridade:'
          end
          object Label6: TLabel
            Left = 732
            Top = 6
            Width = 45
            Height = 13
            Caption = 'Situa'#231#227'o:'
          end
          object Label7: TLabel
            Left = 12
            Top = 51
            Width = 43
            Height = 13
            Caption = 'Assunto:'
          end
          object Label8: TLabel
            Left = 12
            Top = 97
            Width = 50
            Height = 13
            Caption = 'Descri'#231#227'o:'
          end
          object Label9: TLabel
            Left = 581
            Top = 97
            Width = 35
            Height = 13
            Caption = 'Extras:'
          end
          object Label10: TLabel
            Left = 581
            Top = 51
            Width = 86
            Height = 13
            Caption = 'Data de previs'#227'o:'
          end
          object Label11: TLabel
            Left = 687
            Top = 51
            Width = 83
            Height = 13
            Caption = 'Data de entrega:'
          end
          object Label12: TLabel
            Left = 793
            Top = 51
            Width = 94
            Height = 13
            Caption = 'Horas Trabalhadas:'
          end
          object LkpUsuarioCriador: TDBLookupComboBox
            Left = 12
            Top = 24
            Width = 165
            Height = 21
            DataField = 'UsuarioCriador_id'
            DataSource = DMPrincipal.DSChamados
            KeyField = 'id'
            ListField = 'Nome'
            ListSource = DMPrincipal.DSUsuarios
            TabOrder = 0
          end
          object LkpUsuarioResponsavel: TDBLookupComboBox
            Left = 183
            Top = 24
            Width = 166
            Height = 21
            DataField = 'UsuarioResponsavel_id'
            DataSource = DMPrincipal.DSChamados
            KeyField = 'id'
            ListField = 'Nome'
            ListSource = DMPrincipal.DSUsuarios
            TabOrder = 1
          end
          object LkpTipoChamado: TDBLookupComboBox
            Left = 355
            Top = 24
            Width = 257
            Height = 21
            DataField = 'TipoChamado_id'
            DataSource = DMPrincipal.DSChamados
            KeyField = 'id'
            ListField = 'TipoChamado'
            ListSource = DMPrincipal.DSTipoChamados
            TabOrder = 2
          end
          object LkpPrioridade: TDBLookupComboBox
            Left = 618
            Top = 24
            Width = 108
            Height = 21
            DataField = 'PrioridadeChamado_id'
            DataSource = DMPrincipal.DSChamados
            KeyField = 'id'
            ListField = 'Prioridade'
            ListSource = DMPrincipal.DSPrioridadeChamados
            TabOrder = 3
          end
          object LkpSituacao: TDBLookupComboBox
            Left = 732
            Top = 24
            Width = 161
            Height = 21
            DataField = 'SituacaoChamado_id'
            DataSource = DMPrincipal.DSChamados
            KeyField = 'id'
            ListField = 'Situacao'
            ListSource = DMPrincipal.DSSituacaoChamados
            TabOrder = 4
          end
          object DBEditAssunto: TDBEdit
            Left = 12
            Top = 70
            Width = 563
            Height = 21
            CharCase = ecUpperCase
            DataField = 'Titulo'
            DataSource = DMPrincipal.DSChamados
            TabOrder = 5
          end
          object DBMemoDescricao: TDBMemo
            Left = 12
            Top = 116
            Width = 563
            Height = 121
            DataField = 'Descricao'
            DataSource = DMPrincipal.DSChamados
            TabOrder = 9
          end
          object DBMemoExtras: TDBMemo
            Left = 581
            Top = 116
            Width = 312
            Height = 121
            DataField = 'Extras'
            DataSource = DMPrincipal.DSChamados
            TabOrder = 10
          end
          object DBEditDataPrevisao: TDBEdit
            Left = 581
            Top = 70
            Width = 92
            Height = 21
            DataField = 'Data_Previsao'
            DataSource = DMPrincipal.DSChamados
            MaxLength = 10
            TabOrder = 6
          end
          object DBEditDataEntrega: TDBEdit
            Left = 687
            Top = 70
            Width = 100
            Height = 21
            DataField = 'Data_Entrega'
            DataSource = DMPrincipal.DSChamados
            MaxLength = 10
            TabOrder = 7
          end
          object DBEditHorasTrabalhadas: TDBEdit
            Left = 793
            Top = 70
            Width = 100
            Height = 21
            DataField = 'HorasGastas'
            DataSource = DMPrincipal.DSChamados
            TabOrder = 8
          end
        end
      end
    end
    object Panel6: TPanel
      Left = 1
      Top = 65
      Width = 1022
      Height = 307
      Align = alClient
      TabOrder = 2
      object DBGridChamados: TDBGrid
        Left = 1
        Top = 1
        Width = 1020
        Height = 305
        Align = alClient
        DataSource = DMPrincipal.DSChamados
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDrawColumnCell = DBGridChamadosDrawColumnCell
        OnDblClick = BitBtnUsuarioEditarClick
        Columns = <
          item
            Expanded = False
            FieldName = 'id'
            Title.Caption = 'Codigo'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Titulo'
            Title.Caption = 'Assunto'
            Width = 403
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'UsuarioResponsavel'
            Title.Caption = 'Responsavel'
            Width = 118
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Prioridade'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Situacao'
            Title.Caption = 'Situa'#231#227'o'
            Width = 133
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'tipoChamado'
            Title.Caption = 'Tipo de Chamado'
            Width = 132
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Data_Cadastro'
            Title.Caption = 'Data do Cadastro'
            Width = 94
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Data_Entrega'
            Title.Caption = 'Data de Entrega'
            Width = 89
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Data_Previsao'
            Title.Caption = 'Data de Previsao'
            Width = 91
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'HorasGastas'
            Title.Caption = 'Horas trabalhadas'
            Width = 95
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'UsuarioCriador'
            Title.Caption = 'Usuario Criador'
            Width = 141
            Visible = True
          end>
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 705
    Width = 1024
    Height = 52
    Align = alBottom
    TabOrder = 2
    object BitBtn1: TBitBtn
      Left = 1
      Top = 1
      Width = 1022
      Height = 50
      Align = alClient
      Caption = 'SAIR'
      DoubleBuffered = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        20000000000000040000120B0000120B00000000000000000000FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF001D63
        9B1619609839145D9562105A92880D5890A4135C92FC0C578FED999999FF7171
        71FF545454FF515151FF4F4F4FFF4C4C4CFF4A4A4AFF474747FF454545FF2567
        9DFF3274A8FF3D7CAFFF4784B5FF4E8ABAFF3E7EADFF0C578FEAFFFFFF00FFFF
        FF00585858FFA2A2A2FFA2A2A2FFA3A3A3FFA4A4A4FFA4A4A4FFA5A5A5FF2F6F
        A5FF78ABD2FF78ABD3FF73A7D1FF69A0CDFF407FAEFF0F5991EAFFFFFF00FFFF
        FF005C5C5CFFA1A1A1FF3C7340FFA0A1A1FFA3A3A3FFA3A3A3FFA4A4A4FF3674
        AAFF7DAFD4FF5B9AC9FF5495C7FF5896C8FF4180AEFF135C94EAFFFFFF00FFFF
        FF00606060FFA0A0A0FF3D7641FF367139FFA2A2A2FFA2A2A2FFA3A3A3FF3D79
        B0FF82B3D7FF629FCCFF5A9AC9FF5E9BCAFF4381AFFF196098EA37823EFF347E
        3BFF317937FF2E7534FF499150FF468F4CFF39733DFFA1A1A1FFA2A2A2FF457E
        B4FF88B7D9FF67A3CFFF619ECCFF639FCCFF4583B1FF1F649CEA3B8742FF89CB
        92FF84C88DFF80C688FF7BC383FF77C17FFF478F4DFF3B743FFFA1A1A1FF4C84
        BAFF8DBBDBFF6EA8D1FF66A6D1FF5FB4DFFF4785B1FF2569A1EA3E8B46FF8FCE
        99FF7DC687FF78C381FF73C07CFF74C07CFF79C281FF49904FFF547F57FF5489
        BFFF94BFDDFF75ADD4FF63B8E1FF4BD4FFFF428BB8FF2C6EA6EA41904AFF94D2
        9FFF91D09AFF8DCD96FF89CB92FF84C88DFF519858FF417C46FF9F9F9FFF5A8E
        C4FF98C3E0FF7CB3D7FF74AFD6FF5EC4EDFF4B88B3FF3473ABEA44944DFF4291
        4BFF3F8D48FF3D8945FF5DA465FF5AA061FF45834BFF9E9E9EFF9E9E9EFF6092
        C9FF9EC7E2FF83B8DAFF7DB4D7FF7EB3D7FF4F89B4FF3B79B1EAFFFFFF00FFFF
        FF00777777FF9A9A9AFF3D8A45FF498A4FFF9C9C9CFF9D9D9DFF9D9D9DFF6696
        CCFFA2CBE3FF89BDDCFF83B9DAFF84B9DAFF518BB5FF437EB6EAFFFFFF00FFFF
        FF007A7A7AFF999999FF529159FF999A99FF9B9B9BFF9C9C9CFF9C9C9CFF6C9A
        D0FFA7CEE5FF8FC1DFFF89BDDCFF8BBDDCFF538DB6FF4B84BCEAFFFFFF00FFFF
        FF007D7D7DFF999999FF999999FF9A9A9AFF9A9A9AFF9B9B9BFF9B9B9BFF6F9D
        D3FFAAD1E7FFABD1E7FF98C7E1FF91C2DEFF568FB7FF5289C1EAFFFFFF00FFFF
        FF00808080FF7E7E7EFF7C7C7CFF7A7A7AFF777777FF757575FF727272FF719E
        D4FF6F9ED6FF87B2DCFFABD3E8FFA9D0E6FF5890B8FF598EC6EAFFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00709ED6DB6D9CD4FF85B1DAFF5A91B9FF6093CBEAFFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF006D9CD4896A9AD2FB6697CFEE}
      Layout = blGlyphTop
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn1Click
    end
  end
end
