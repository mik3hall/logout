#import <JavaNativeFoundation/JavaNativeFoundation.h>
#import <JavaVM/jni.h>

JNIEXPORT void JNICALL Java_us_hall_osx_LogOut_logPrint__Z(JNIEnv *env, jclass clazz, jboolean field) 
{
	if (field == JNI_TRUE)
		NSLog(@"true");
	else NSLog(@"false");
}

JNIEXPORT void JNICALL Java_us_hall_osx_LogOut_logPrint__C(JNIEnv *env, jclass clazz, jchar field) 
{
	NSLog(@"%c",field);
}
 	
JNIEXPORT void JNICALL Java_us_hall_osx_LogOut_logPrint__I(JNIEnv *env, jclass clazz, jint field) 
{
	NSLog(@"%i",field);
}

JNIEXPORT void JNICALL Java_us_hall_osx_LogOut_logPrint__J(JNIEnv *env, jclass clazz, jlong field) 
{
	NSLog(@"%ul",field);
}

JNIEXPORT void JNICALL Java_us_hall_osx_LogOut_logPrint__F(JNIEnv *env, jclass clazz, jfloat field) 
{
	NSLog(@"%f",field);
}

JNIEXPORT void JNICALL Java_us_hall_osx_LogOut_logPrint__D(JNIEnv *env, jclass clazz, jdouble field) 
{
	NSLog(@"%f",(double)field);
}

JNIEXPORT void JNICALL Java_us_hall_osx_LogOut_logPrint__Ljava_lang_String_2(JNIEnv *env, jclass clazz, jstring field) 
{
	JNF_COCOA_ENTER(env);
    NSLog(@"%@",JNFJavaToNSString(env, field));
	JNF_COCOA_EXIT(env);
}