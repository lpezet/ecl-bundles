IMPORT Std;

EXPORT Bundle := MODULE(Std.BundleBase)
  EXPORT Name := 'LPezet';
  EXPORT Description := 'LP Bundle';
  EXPORT Authors := ['LP'];
  EXPORT License := 'http://www.apache.org/licenses/LICENSE-2.0';
  EXPORT Copyright := 'Copyright (C) 2013 HPCC Systems®';
  EXPORT DependsOn := [];
  EXPORT Version := '1.0.0';
	EXPORT Properties := DICTIONARY( [{ 'Category' => 'Test' } ], Std.BundleBase.PropertyRecord);
  EXPORT PlatformVersion := '5.2.6';
END;