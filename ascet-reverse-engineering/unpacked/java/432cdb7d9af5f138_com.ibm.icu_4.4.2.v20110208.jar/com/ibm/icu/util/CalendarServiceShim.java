/*
 * Decompiled with CFR 0.152.
 */
package com.ibm.icu.util;

import com.ibm.icu.impl.ICULocaleService;
import com.ibm.icu.impl.ICUResourceBundle;
import com.ibm.icu.impl.ICUService;
import com.ibm.icu.util.Calendar;
import com.ibm.icu.util.ULocale;
import java.util.Locale;
import java.util.MissingResourceException;
import java.util.Set;

class CalendarServiceShim
extends Calendar.CalendarShim {
    private static ICULocaleService service = new CalService();

    CalendarServiceShim() {
    }

    Locale[] getAvailableLocales() {
        if (service.isDefault()) {
            return ICUResourceBundle.getAvailableLocales();
        }
        return service.getAvailableLocales();
    }

    ULocale[] getAvailableULocales() {
        if (service.isDefault()) {
            return ICUResourceBundle.getAvailableULocales();
        }
        return service.getAvailableULocales();
    }

    Calendar createInstance(ULocale desiredLocale) {
        Calendar cal;
        ULocale[] actualLoc = new ULocale[1];
        if (desiredLocale.equals(ULocale.ROOT)) {
            desiredLocale = ULocale.ROOT;
        }
        if ((cal = (Calendar)service.get(desiredLocale, actualLoc)) == null) {
            throw new MissingResourceException("Unable to construct Calendar", "", "");
        }
        cal = (Calendar)cal.clone();
        return cal;
    }

    Object registerFactory(Calendar.CalendarFactory factory) {
        return service.registerFactory(new CalFactory(factory));
    }

    boolean unregister(Object k) {
        return service.unregisterFactory((ICUService.Factory)k);
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private static final class CalFactory
    extends ICULocaleService.LocaleKeyFactory {
        private Calendar.CalendarFactory delegate;

        CalFactory(Calendar.CalendarFactory delegate) {
            super(delegate.visible());
            this.delegate = delegate;
        }

        @Override
        public Object create(ICUService.Key key, ICUService srvc) {
            if (this.handlesKey(key)) {
                ICULocaleService.LocaleKey lkey = (ICULocaleService.LocaleKey)key;
                ULocale loc = lkey.canonicalLocale();
                Object result = this.delegate.createCalendar(loc);
                if (result == null) {
                    result = srvc.getKey(key, null, this);
                }
                return result;
            }
            return null;
        }

        @Override
        protected Set<String> getSupportedIDs() {
            return this.delegate.getSupportedLocaleNames();
        }
    }

    private static class CalService
    extends ICULocaleService {
        CalService() {
            super("Calendar");
            class RBCalendarFactory
            extends ICULocaleService.ICUResourceBundleFactory {
                RBCalendarFactory() {
                }

                protected Object handleCreate(ULocale loc, int kind, ICUService sercice) {
                    return Calendar.createInstance(loc);
                }
            }
            this.registerFactory(new RBCalendarFactory());
            this.markDefault();
        }
    }
}

