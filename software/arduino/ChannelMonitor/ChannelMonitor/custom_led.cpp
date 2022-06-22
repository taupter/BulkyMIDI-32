#include "custom_led.h"
#include "settings.h"

CustomLED::CustomLED(uint8_t pin) {
    digitalWrite(pin, LOW);
	pinMode(pin, OUTPUT);
	_pin = pin;
    set_brightness(Brightness::BRIGHTNESS_MEDIUM);
}

void CustomLED::tick() {
    if (timer > 0 && millis() > timer) {
        digitalWrite(_pin, LOW);
   }
}

void CustomLED::boost(int period) {
    timer = millis() + period;
    analogWrite(_pin, value);
}

void CustomLED::clear(byte channel) {
    digitalWrite(_pin, LOW);
    timer = 0;
}

void CustomLED::set_brightness(Brightness level) {
    switch (level) {
        case Brightness::BRIGHTNESS_LOW:
            value = LED_ACT_LOW;
            break;

        case Brightness::BRIGHTNESS_MEDIUM:
            value = LED_ACT_MEDIUM;
            break;

        case Brightness::BRIGHTNESS_HIGH:
            value = LED_ACT_HIGH;
            break;

        default:
            return;
    }
    
    analogWrite(PIN_OE, value);
    _brightness = level;
}

void CustomLED::toggle_brightness() {
    uint8_t level = _brightness;
    if (level == Brightness::BRIGHTNESS_HIGH) level = Brightness::BRIGHTNESS_LOW;
    else level++;
    set_brightness((Brightness) level);
}
