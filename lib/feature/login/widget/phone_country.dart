import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// تم الافتراض أن هذا الملف موجود ويحتوي على تنسيقاتك
import 'package:hackathon_project/common/context_extension.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class PhoneCountry extends StatefulWidget {
  const PhoneCountry({super.key});

  @override
  State<PhoneCountry> createState() => _PhoneCountryState();
}

class _PhoneCountryState extends State<PhoneCountry> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController controller = TextEditingController();
  // تعيين السعودية كقيمة ابتدائية
  PhoneNumber number = PhoneNumber(isoCode: 'SA');

  @override
  Widget build(BuildContext context) {
    // يجب استخدام ScreenUtil.init في مكان ما في الـ main.dart ليعمل بشكل صحيح.
    return Form(
      key: formKey,
      child: Container(
        // إضافة تبطين خارجي للـ Container لضمان عدم التصاق الحقل بحواف الشاشة
        padding: EdgeInsets.symmetric(horizontal: 2.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // يتم استخدام Directionality:ltr لضمان عمل مكتبة الهاتف بشكل صحيح حتى في التطبيقات العربية
            Directionality(
              textDirection: TextDirection.ltr,
              child: InternationalPhoneNumberInput(
                onInputChanged: (PhoneNumber number) {
                  // طباعة الرقم الكامل عند التغيير
                  print('رقم الهاتف الكامل: ${number.phoneNumber}');
                },
                onInputValidated: (bool value) {
                  print('هل الإدخال صحيح؟ $value');
                },

                selectorConfig: const SelectorConfig(
                  selectorType: PhoneInputSelectorType.DROPDOWN,
                  // يمكن إضافة تنسيقات لتضييق محدد الدولة هنا إذا لزم الأمر
                ),
                spaceBetweenSelectorAndTextField: 8,
                ignoreBlank: false,

                // -----------------------------------------------------------------
                // التعديل الرئيسي لزيادة مساحة إدخال النص:
                inputDecoration: InputDecoration(
                  // نص تلميحي يوجه المستخدم لإدخال رقم هاتف محلي (بدون رمز الدولة)
                  hintText: "5xxxxxxxx",
                  hintStyle: const TextStyle(fontSize: 16, color: Colors.grey),

                  // تقليل الـ contentPadding الأفقي (horizontal) لزيادة طول حقل النص
                  // 18.h: للحفاظ على ارتفاع الحقل
                  // 6.w: تقليل التبطين الأفقي لزيادة المساحة المخصصة للرقم
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 18.h,
                    horizontal: 6.w,
                  ),

                  labelStyle: context.displaySmall,

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(color: Colors.grey, width: 1),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(color: Colors.grey, width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(
                      color: Theme.of(context).primaryColor,
                      width: 2,
                    ),
                  ),
                ),

                // -----------------------------------------------------------------
                autoValidateMode: AutovalidateMode.onUserInteraction,
                // تنسيق نص محدد الدولة (لضمان أنه لا يأخذ مساحة أكبر من اللازم)
                selectorTextStyle: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
                initialValue: number,
                textFieldController: controller,
                formatInput: false,
                keyboardType: const TextInputType.numberWithOptions(
                  signed: false,
                  decimal: false,
                ),

                onSaved: (PhoneNumber number) {
                  print('الرقم الذي تم حفظه: $number');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void getPhoneNumber(String phoneNumber) async {
    // وظيفة للحصول على معلومات المنطقة من الرقم المدخل
    PhoneNumber number = await PhoneNumber.getRegionInfoFromPhoneNumber(
      phoneNumber,
      'US',
    );
    setState(() {
      this.number = number;
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}

/*import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hackathon_project/common/context_extension.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class PhoneCountry extends StatefulWidget {
  const PhoneCountry({super.key});

  @override
  State<PhoneCountry> createState() => _PhoneCountryState();
}

class _PhoneCountryState extends State<PhoneCountry> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController controller = TextEditingController();
  String initialCountry = 'SA';
  PhoneNumber number = PhoneNumber(isoCode: 'SA');

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Directionality(
              textDirection: TextDirection.ltr,
              child: InternationalPhoneNumberInput(
                onInputChanged: (PhoneNumber number) {
                  print(number.phoneNumber);
                },
                onInputValidated: (bool value) {
                  print(value);
                },

                selectorConfig: SelectorConfig(
                  selectorType: PhoneInputSelectorType.DROPDOWN,
                  //   backgroundColor: Colors.black87,
                ),
           //     hintText: "5000000000",
            //    locale: "رقم الجوال",
                spaceBetweenSelectorAndTextField: 8,
                ignoreBlank: false,

                //   searchBoxDecoration:InputDecoration(disabledBorder),
                //  inputDecoration: DecoratedBox(decoration: Decoration),
                //-----------------------------------------------------------------
                inputDecoration: InputDecoration(
                  hintText: "500000000",
                  hintStyle: TextStyle(fontSize: 16),
                  contentPadding: EdgeInsets.symmetric(horizontal: 58.h),
                  labelStyle: context.displaySmall,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(color: Colors.grey, width: 1),
                  ),
                ),

                //-----------------------------------------------------------------
                autoValidateMode: AutovalidateMode.always,
                selectorTextStyle: TextStyle(color: Colors.black),
                initialValue: number,
                textFieldController: controller,
                formatInput: false,
                keyboardType: TextInputType.numberWithOptions(
                  signed: true,
                  decimal: true,
                ),
                inputBorder: OutlineInputBorder(),
                //inputDecoration: OutlineInputBorder(),
                //------------------------------------------------------------------------------
                onSaved: (PhoneNumber number) {
                  print('On Saved: $number');
                },
              ),
            ),

            //--------------------------------------------------------------------------
            /*       ElevatedButton(
              onPressed: () {
                formKey.currentState?.validate();
              },
              child: Text('Validate'),
            ),
            ElevatedButton(
              onPressed: () {
                getPhoneNumber(controller.text);
              },
              child: Text('Update'),
            ),*/
            //--------------------------------------------------------------------------------------------
          ],
        ),
      ),
    );
  }

  void getPhoneNumber(String phoneNumber) async {
    PhoneNumber number = await PhoneNumber.getRegionInfoFromPhoneNumber(
      phoneNumber,
      'US',
    );
    setState(() {
      this.number = number;
    });
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}*/
