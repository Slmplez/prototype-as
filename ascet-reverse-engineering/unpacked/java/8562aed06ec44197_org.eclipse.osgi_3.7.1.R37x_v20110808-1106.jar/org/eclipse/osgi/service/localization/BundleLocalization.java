/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.service.localization;

import java.util.ResourceBundle;
import org.osgi.framework.Bundle;

public interface BundleLocalization {
    public ResourceBundle getLocalization(Bundle var1, String var2);
}

