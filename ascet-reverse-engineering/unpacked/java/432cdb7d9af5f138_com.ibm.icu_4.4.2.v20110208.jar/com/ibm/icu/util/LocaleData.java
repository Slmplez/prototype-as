/*
 * Decompiled with CFR 0.152.
 */
package com.ibm.icu.util;

import com.ibm.icu.impl.ICUResourceBundle;
import com.ibm.icu.text.UnicodeSet;
import com.ibm.icu.util.ULocale;
import com.ibm.icu.util.UResourceBundle;
import com.ibm.icu.util.VersionInfo;
import java.util.MissingResourceException;

public final class LocaleData {
    private static final String EXEMPLAR_CHARS = "ExemplarCharacters";
    private static final String MEASUREMENT_SYSTEM = "MeasurementSystem";
    private static final String PAPER_SIZE = "PaperSize";
    private static final String LOCALE_DISPLAY_PATTERN = "localeDisplayPattern";
    private static final String PATTERN = "pattern";
    private static final String SEPARATOR = "separator";
    private boolean noSubstitute;
    private ICUResourceBundle bundle;
    private ICUResourceBundle langBundle;
    public static final int ES_STANDARD = 0;
    public static final int ES_AUXILIARY = 1;
    public static final int ES_COUNT = 2;
    public static final int QUOTATION_START = 0;
    public static final int QUOTATION_END = 1;
    public static final int ALT_QUOTATION_START = 2;
    public static final int ALT_QUOTATION_END = 3;
    public static final int DELIMITER_COUNT = 4;
    private static VersionInfo gCLDRVersion = null;

    private LocaleData() {
    }

    public static UnicodeSet getExemplarSet(ULocale locale, int options) {
        ICUResourceBundle bundle = (ICUResourceBundle)UResourceBundle.getBundleInstance("com/ibm/icu/impl/data/icudt44b", locale);
        String pattern = bundle.getString(EXEMPLAR_CHARS);
        return new UnicodeSet(pattern, 1 | options);
    }

    public UnicodeSet getExemplarSet(int options, int extype) {
        ICUResourceBundle stringBundle;
        block4: {
            String[] exemplarSetTypes = new String[]{EXEMPLAR_CHARS, "AuxExemplarCharacters"};
            try {
                stringBundle = (ICUResourceBundle)this.bundle.get(exemplarSetTypes[extype]);
                if (!this.noSubstitute || stringBundle.getLoadingStatus() != 2) break block4;
                return null;
            }
            catch (MissingResourceException ex) {
                if (extype == 1) {
                    return new UnicodeSet();
                }
                throw ex;
            }
        }
        return new UnicodeSet(stringBundle.getString(), 1 | options);
    }

    public static final LocaleData getInstance(ULocale locale) {
        LocaleData ld = new LocaleData();
        ld.bundle = (ICUResourceBundle)UResourceBundle.getBundleInstance("com/ibm/icu/impl/data/icudt44b", locale);
        ld.langBundle = (ICUResourceBundle)UResourceBundle.getBundleInstance("com/ibm/icu/impl/data/icudt44b/lang", locale);
        ld.noSubstitute = false;
        return ld;
    }

    public static final LocaleData getInstance() {
        return LocaleData.getInstance(ULocale.getDefault());
    }

    public void setNoSubstitute(boolean setting) {
        this.noSubstitute = setting;
    }

    public boolean getNoSubstitute() {
        return this.noSubstitute;
    }

    public String getDelimiter(int type) {
        String[] delimiterTypes = new String[]{"quotationStart", "quotationEnd", "alternateQuotationStart", "alternateQuotationEnd"};
        ICUResourceBundle stringBundle = (ICUResourceBundle)this.bundle.get("delimiters").get(delimiterTypes[type]);
        if (this.noSubstitute && stringBundle.getLoadingStatus() == 2) {
            return null;
        }
        return new String(stringBundle.getString());
    }

    public static final MeasurementSystem getMeasurementSystem(ULocale locale) {
        ICUResourceBundle bundle = (ICUResourceBundle)UResourceBundle.getBundleInstance("com/ibm/icu/impl/data/icudt44b", locale);
        UResourceBundle sysBundle = bundle.get(MEASUREMENT_SYSTEM);
        int system = sysBundle.getInt();
        if (MeasurementSystem.US.equals(system)) {
            return MeasurementSystem.US;
        }
        if (MeasurementSystem.SI.equals(system)) {
            return MeasurementSystem.SI;
        }
        return null;
    }

    public static final PaperSize getPaperSize(ULocale locale) {
        ICUResourceBundle bundle = (ICUResourceBundle)UResourceBundle.getBundleInstance("com/ibm/icu/impl/data/icudt44b", locale);
        UResourceBundle obj = bundle.get(PAPER_SIZE);
        int[] size = obj.getIntVector();
        return new PaperSize(size[0], size[1]);
    }

    public String getLocaleDisplayPattern() {
        ICUResourceBundle locDispBundle = (ICUResourceBundle)this.langBundle.get(LOCALE_DISPLAY_PATTERN);
        String localeDisplayPattern = locDispBundle.getStringWithFallback(PATTERN);
        return localeDisplayPattern;
    }

    public String getLocaleSeparator() {
        ICUResourceBundle locDispBundle = (ICUResourceBundle)this.langBundle.get(LOCALE_DISPLAY_PATTERN);
        String localeSeparator = locDispBundle.getStringWithFallback(SEPARATOR);
        return localeSeparator;
    }

    public static VersionInfo getCLDRVersion() {
        if (gCLDRVersion == null) {
            UResourceBundle supplementalDataBundle = UResourceBundle.getBundleInstance("com/ibm/icu/impl/data/icudt44b", "supplementalData", ICUResourceBundle.ICU_DATA_CLASS_LOADER);
            UResourceBundle cldrVersionBundle = supplementalDataBundle.get("cldrVersion");
            gCLDRVersion = VersionInfo.getInstance(cldrVersionBundle.getString());
        }
        return gCLDRVersion;
    }

    public static final class MeasurementSystem {
        public static final MeasurementSystem SI = new MeasurementSystem(0);
        public static final MeasurementSystem US = new MeasurementSystem(1);
        private int systemID;

        private MeasurementSystem(int id) {
            this.systemID = id;
        }

        private boolean equals(int id) {
            return this.systemID == id;
        }
    }

    public static final class PaperSize {
        private int height;
        private int width;

        private PaperSize(int h, int w) {
            this.height = h;
            this.width = w;
        }

        public int getHeight() {
            return this.height;
        }

        public int getWidth() {
            return this.width;
        }
    }
}

