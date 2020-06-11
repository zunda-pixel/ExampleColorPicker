#ExampleColorPicker
これはPreferenceBundle(設定.app)で色を選択できるColorPickerの簡単な実装例です。
見た目のCell部分のみの実装であり、値の取得は考慮されていません。

##libcolorpicker
これはatomikpanda氏が開発したでもっとも標準的なColorPickerライブラリです。
このColorPickerには2種類あり、PFSimpleLiteColorCellとPFColorCellがあります。
###必要なもの(libcolorpicker)
このlibcolorpickerを使用するにはlibcolorpicker.dylibがTheosに必要なので、一度iPhone/iPad側で、BigBossから配布されいるlibcolorpickerをインストールしてください。
そうすると/usr/lib/にlibcolorpicker.dylibインストールされるので、そのdylibファイルをTheos側の$THEOS/libにコピーしておいてください。
そしてlibcolorpicker.hも必要なので、libcolorpickerのGitHubからダウンロードしてきます。そのheaderファイルを$THEOS/includeにコピーしておいてください。

###実装方法(libcolorpicker)
controlにorg.thebigboss.libcolorpickerを追加
Depends: mobilesubstrate, preferenceloader, org.thebigboss.libcolorpicker

Makefile
controlにcolorpickerを追加

$(BUNDLE_NAME)_LIBRARIES +=  colorpicker

Root.plist
PFSimpleLiteColorCell
<dict>
			<key>cell</key>
			<string>PSLinkCell</string>
			<key>cellClass</key>
			<string>PFSimpleLiteColorCell</string>
			<key>libcolorpicker</key>
			<dict>
				<key>defaults</key>
				<string>com.zunda.examplecolorpicker</string>
				<key>key</key>
				<string>favoriteColor</string>
				<key>fallback</key>
				<string>#ff0000</string>
				<key>alpha</key>
				<true/>
			</dict>
			<key>label</key>
			<string>Color</string>
	</dict>
  PFColorCell
  <dict>
			<key>cell</key>
			<string>PSLinkCell</string>
			<key>cellClass</key>
			<string>PFColorCell</string>
			<key>label</key>
			<string>Color</string>
			<key>color_defaults</key>
			<string>com.zunda.examplecolorpicker</string>
			<key>color_key</key>
			<string>aColor</string>
			<key>title</key>
			<string>Color</string>
			<key>color_fallback</key>
			<string>#10b6ec</string>
			<key>usesRGB</key>
			<true/>
			<key>usesAlpha</key>
			<true/>
			<key>color_postNotification</key>
			<string>com.zunda.examplecolorpicker</string>
		</dict>
