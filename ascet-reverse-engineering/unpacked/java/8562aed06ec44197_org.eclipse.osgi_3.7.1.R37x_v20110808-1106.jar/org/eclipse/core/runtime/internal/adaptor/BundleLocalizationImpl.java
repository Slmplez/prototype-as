/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.runtime.internal.adaptor;

import java.util.ResourceBundle;
import org.eclipse.osgi.framework.internal.core.AbstractBundle;
import org.eclipse.osgi.service.localization.BundleLocalization;
import org.osgi.framework.Bundle;

public class BundleLocalizationImpl
implements BundleLocalization {
    public ResourceBundle getLocalization(Bundle bundle, String locale) {
        return ((AbstractBundle)bundle).getResourceBundle(locale);
    }
}

