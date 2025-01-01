#!/bin/bash

# التحقق من وجود speedtest-cli
if ! command -v speedtest-cli &> /dev/null; then
    echo "speedtest-cli غير مثبت. سيتم تثبيته الآن."

    # التحقق من وجود Homebrew
    if ! command -v brew &> /dev/null; then
        echo "Homebrew غير مثبت. سيتم تثبيته الآن."
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    fi

    # تثبيت speedtest-cli باستخدام Homebrew
    echo "تثبيت speedtest-cli باستخدام Homebrew..."
    brew install speedtest-cli

    # التحقق مرة أخرى بعد التثبيت
    if ! command -v speedtest-cli &> /dev/null; then
        echo "حدث خطأ أثناء تثبيت speedtest-cli. يرجى التحقق يدويًا."
        exit 1
    fi

    echo "تم تثبيت speedtest-cli بنجاح!"
fi

# تشغيل اختبار السرعة
echo "جارٍ اختبار سرعة الإنترنت... الرجاء الانتظار."
result=$(speedtest-cli --simple)

# التحقق من نجاح الاختبار
if [ $? -ne 0 ]; then
    echo "حدث خطأ أثناء اختبار السرعة. تأكد من اتصالك بالإنترنت وحاول مجددًا."
    exit 1
fi

# عرض النتائج
echo "نتائج اختبار سرعة الإنترنت:"
echo "$result"

# حفظ النتائج في ملف (اختياري)
log_file="internet_speed_log.txt"
echo "-----------------------------" >> "$log_file"
echo "$(date)" >> "$log_file"
echo "$result" >> "$log_file"
echo "-----------------------------" >> "$log_file"
echo "تم حفظ النتائج في الملف: $log_file"
