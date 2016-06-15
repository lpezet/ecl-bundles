IMPORT Std;

EXPORT Bundle := MODULE(Std.BundleBase)
  EXPORT Name := 'CMS';
  EXPORT Description := 'CMS';
  EXPORT Authors := ['LP'];
  EXPORT License := 'http://www.apache.org/licenses/LICENSE-2.0';
  EXPORT Copyright := 'Copyright (C) 2016 LP';
  EXPORT DependsOn := ['LPezet'];
  EXPORT Version := '1.0.0';
	EXPORT Properties := DICTIONARY( [{ 'Category' => 'Test' } ], Std.BundleBase.PropertyRecord);
  EXPORT PlatformVersion := '5.2.6';
END;