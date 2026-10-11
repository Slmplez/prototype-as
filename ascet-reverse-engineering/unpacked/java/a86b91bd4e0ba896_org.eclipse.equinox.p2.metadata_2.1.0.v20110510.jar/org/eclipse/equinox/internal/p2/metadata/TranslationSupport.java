/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.equinox.internal.p2.core.helpers.LogHelper
 *  org.eclipse.osgi.service.localization.LocaleProvider
 */
package org.eclipse.equinox.internal.p2.metadata;

import java.lang.ref.SoftReference;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.equinox.internal.p2.core.helpers.LogHelper;
import org.eclipse.equinox.internal.p2.metadata.InstallableUnit;
import org.eclipse.equinox.p2.metadata.ICopyright;
import org.eclipse.equinox.p2.metadata.IInstallableUnit;
import org.eclipse.equinox.p2.metadata.ILicense;
import org.eclipse.equinox.p2.metadata.IUpdateDescriptor;
import org.eclipse.equinox.p2.metadata.KeyWithLocale;
import org.eclipse.equinox.p2.metadata.MetadataFactory;
import org.eclipse.equinox.p2.metadata.expression.ExpressionUtil;
import org.eclipse.equinox.p2.metadata.expression.IExpression;
import org.eclipse.equinox.p2.metadata.expression.IExpressionFactory;
import org.eclipse.equinox.p2.query.Collector;
import org.eclipse.equinox.p2.query.IQuery;
import org.eclipse.equinox.p2.query.IQueryResult;
import org.eclipse.equinox.p2.query.IQueryable;
import org.eclipse.equinox.p2.query.QueryUtil;
import org.eclipse.osgi.service.localization.LocaleProvider;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class TranslationSupport {
    static final Locale DEFAULT_LOCALE = new Locale("df", "LT");
    private static TranslationSupport instance;
    static final String NAMESPACE_IU_LOCALIZATION = "org.eclipse.equinox.p2.localization";
    private IQueryable<IInstallableUnit> fragmentSource;
    private static IExpression capabilityMatch;
    private static IExpression haveHostMatch;
    private final Map<String, SoftReference<IQueryResult<IInstallableUnit>>> localeCollectorCache = new HashMap<String, SoftReference<IQueryResult<IInstallableUnit>>>(2);
    private LocaleProvider localeProvider;
    private boolean loggedMissingSource = false;
    static /* synthetic */ Class class$0;

    static {
        capabilityMatch = ExpressionUtil.parse("providedCapabilities.exists(x | x.namespace == $0 && $1.exists(n | x.name == n))");
        haveHostMatch = ExpressionUtil.parse("host.exists(h | $0 ~= h)");
    }

    public static synchronized TranslationSupport getInstance() {
        if (instance == null) {
            instance = new TranslationSupport();
        }
        return instance;
    }

    public TranslationSupport() {
    }

    public TranslationSupport(IQueryable<IInstallableUnit> fragmentSource) {
        this.fragmentSource = fragmentSource;
    }

    private List<String> buildLocaleVariants(String locale) {
        ArrayList<String> result = new ArrayList<String>(4);
        while (true) {
            result.add(locale);
            int lastSeparator = locale.lastIndexOf(95);
            if (lastSeparator == -1) break;
            locale = locale.substring(0, lastSeparator);
        }
        result.add(DEFAULT_LOCALE.toString());
        return result;
    }

    private String cacheResult(IInstallableUnit iu, String localizedKey, String localizedValue) {
        if (iu instanceof InstallableUnit) {
            ((InstallableUnit)iu).setLocalizedProperty(localizedKey, localizedValue);
        }
        return localizedValue;
    }

    public ICopyright getCopyright(IInstallableUnit iu, String locale) {
        ICopyright copyright;
        String body;
        if (locale == null) {
            locale = this.getCurrentLocale();
        }
        String string = body = (copyright = iu.getCopyright()) != null ? copyright.getBody() : null;
        if (body == null || body.length() <= 1 || body.charAt(0) != '%') {
            return copyright;
        }
        String actualKey = body.substring(1);
        body = this.getLocalizedIUProperty(iu, actualKey, locale);
        return MetadataFactory.createCopyright(copyright.getLocation(), body);
    }

    private String getCurrentLocale() {
        if (this.localeProvider != null) {
            return this.localeProvider.getLocale().toString();
        }
        return Locale.getDefault().toString();
    }

    public String getIUProperty(IInstallableUnit iu, String propertyKey, String locale) {
        String value;
        if (locale == null) {
            locale = this.getCurrentLocale();
        }
        if ((value = iu.getProperty(propertyKey)) == null || value.length() <= 1 || value.charAt(0) != '%') {
            return value;
        }
        String actualKey = value.substring(1);
        return this.getLocalizedIUProperty(iu, actualKey, locale);
    }

    public String getIUProperty(IInstallableUnit iu, KeyWithLocale propertyKey) {
        return this.getIUProperty(iu, propertyKey.getKey(), propertyKey.getLocale().toString());
    }

    public String getIUProperty(IInstallableUnit iu, String propertyKey) {
        return this.getIUProperty(iu, propertyKey, null);
    }

    private ILicense getLicense(IInstallableUnit iu, ILicense license, String locale) {
        String body;
        String string = body = license != null ? license.getBody() : null;
        if (body == null || body.length() <= 1 || body.charAt(0) != '%') {
            return license;
        }
        String actualKey = body.substring(1);
        body = this.getLocalizedIUProperty(iu, actualKey, locale);
        return MetadataFactory.createLicense(license.getLocation(), body);
    }

    public ILicense[] getLicenses(IInstallableUnit iu, String locale) {
        if (locale == null) {
            locale = this.getCurrentLocale();
        }
        Collection<ILicense> licenses = iu.getLicenses();
        ILicense[] translatedLicenses = new ILicense[licenses.size()];
        int i = 0;
        for (ILicense iLicense : licenses) {
            translatedLicenses[i++] = this.getLicense(iu, iLicense, locale);
        }
        return translatedLicenses;
    }

    public IUpdateDescriptor getUpdateDescriptor(IInstallableUnit iu, String locale) {
        IUpdateDescriptor descriptor;
        String body;
        if (locale == null) {
            locale = this.getCurrentLocale();
        }
        String string = body = (descriptor = iu.getUpdateDescriptor()) != null ? descriptor.getDescription() : null;
        if (body == null || body.length() <= 1 || body.charAt(0) != '%') {
            return descriptor;
        }
        String actualKey = body.substring(1);
        body = this.getLocalizedIUProperty(iu, actualKey, locale);
        return MetadataFactory.createUpdateDescriptor(descriptor.getIUsBeingUpdated(), descriptor.getSeverity(), body, descriptor.getLocation());
    }

    private synchronized IQueryResult<IInstallableUnit> getLocalizationFragments(List<String> localeVariants, String locale) {
        IQueryResult<IInstallableUnit> cached;
        if (this.fragmentSource == null) {
            if (!this.loggedMissingSource) {
                this.loggedMissingSource = true;
                LogHelper.log((IStatus)new Status(1, "org.eclipse.equinox.p2.metadata", "No translation source unavailable. Default language will be used."));
            }
            return Collector.emptyCollector();
        }
        SoftReference<IQueryResult<IInstallableUnit>> queryResultReference = this.localeCollectorCache.get(locale);
        if (queryResultReference != null && (cached = queryResultReference.get()) != null) {
            return cached;
        }
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.equinox.p2.metadata.IInstallableUnitFragment");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        IQuery<?> iuQuery = QueryUtil.createMatchQuery(clazz, capabilityMatch, new Object[]{NAMESPACE_IU_LOCALIZATION, localeVariants});
        IQueryResult<IInstallableUnit> collected = this.fragmentSource.query(iuQuery, null);
        this.localeCollectorCache.put(locale, new SoftReference<IQueryResult<IInstallableUnit>>(collected));
        return collected;
    }

    private String getLocalizedIUProperty(IInstallableUnit iu, String actualKey, String locale) {
        IQuery<?> iuQuery;
        IQueryResult<IInstallableUnit> collected;
        String localizedKey = this.makeLocalizedKey(actualKey, locale);
        String localizedValue = null;
        if (iu instanceof InstallableUnit) {
            localizedValue = ((InstallableUnit)iu).getLocalizedProperty(localizedKey);
        }
        if (localizedValue == null) {
            localizedValue = iu.getProperty(localizedKey);
        }
        if (localizedValue != null) {
            return localizedValue;
        }
        List<String> locales = this.buildLocaleVariants(locale);
        IInstallableUnit theUnit = iu;
        IQueryResult<IInstallableUnit> localizationFragments = this.getLocalizationFragments(locales, locale);
        IExpressionFactory factory = ExpressionUtil.getFactory();
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.equinox.p2.metadata.IInstallableUnitFragment");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if (!(collected = (iuQuery = QueryUtil.createMatchQuery(clazz, factory.matchExpression(haveHostMatch, new Object[]{theUnit}), new Object[0])).perform(localizationFragments.iterator())).isEmpty()) {
            String translation = null;
            Iterator<IInstallableUnit> iter = collected.iterator();
            while (iter.hasNext() && translation == null) {
                IInstallableUnit localizationIU = iter.next();
                Iterator<String> jter = locales.iterator();
                while (jter.hasNext()) {
                    String localeKey = this.makeLocalizedKey(actualKey, jter.next());
                    translation = localizationIU.getProperty(localeKey);
                    if (translation == null) continue;
                    return this.cacheResult(iu, localizedKey, translation);
                }
            }
        }
        for (String nextLocale : locales) {
            String localeKey = this.makeLocalizedKey(actualKey, nextLocale);
            String nextValue = iu.getProperty(localeKey);
            if (nextValue == null) continue;
            return this.cacheResult(iu, localizedKey, nextValue);
        }
        return this.cacheResult(iu, localizedKey, actualKey);
    }

    private String makeLocalizedKey(String actualKey, String localeImage) {
        return new StringBuffer(String.valueOf(localeImage)).append('.').append(actualKey).toString();
    }

    public synchronized void setLocaleProvider(LocaleProvider provider) {
        if (provider != this.localeProvider) {
            this.localeProvider = provider;
            this.localeCollectorCache.clear();
        }
    }

    public synchronized IQueryable<IInstallableUnit> setTranslationSource(IQueryable<IInstallableUnit> queryable) {
        IQueryable<IInstallableUnit> previous = this.fragmentSource;
        if (previous != queryable) {
            this.fragmentSource = queryable;
            this.localeCollectorCache.clear();
        }
        return previous;
    }
}

