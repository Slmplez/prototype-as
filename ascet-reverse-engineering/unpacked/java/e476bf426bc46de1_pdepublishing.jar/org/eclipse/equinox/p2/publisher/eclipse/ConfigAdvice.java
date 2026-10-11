/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.equinox.frameworkadmin.BundleInfo
 *  org.eclipse.equinox.internal.p2.core.helpers.CollectionUtils
 *  org.eclipse.equinox.internal.provisional.frameworkadmin.ConfigData
 *  org.eclipse.equinox.p2.publisher.AbstractAdvice
 */
package org.eclipse.equinox.p2.publisher.eclipse;

import java.util.Map;
import java.util.Properties;
import org.eclipse.equinox.frameworkadmin.BundleInfo;
import org.eclipse.equinox.internal.p2.core.helpers.CollectionUtils;
import org.eclipse.equinox.internal.provisional.frameworkadmin.ConfigData;
import org.eclipse.equinox.p2.publisher.AbstractAdvice;
import org.eclipse.equinox.p2.publisher.eclipse.IConfigAdvice;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ConfigAdvice
extends AbstractAdvice
implements IConfigAdvice {
    private ConfigData data;
    private String configSpec;

    public ConfigAdvice(ConfigData data, String configSpec) {
        this.data = data;
        this.configSpec = configSpec;
    }

    @Override
    public BundleInfo[] getBundles() {
        return this.data.getBundles();
    }

    protected String getConfigSpec() {
        return this.configSpec;
    }

    @Override
    public Map<String, String> getProperties() {
        return CollectionUtils.toMap((Properties)this.data.getProperties());
    }
}

