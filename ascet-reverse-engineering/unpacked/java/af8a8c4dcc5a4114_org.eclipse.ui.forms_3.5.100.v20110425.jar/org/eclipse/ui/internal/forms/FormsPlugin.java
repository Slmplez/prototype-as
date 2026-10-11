/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.ui.plugin.AbstractUIPlugin
 *  org.osgi.framework.BundleContext
 */
package org.eclipse.ui.internal.forms;

import org.eclipse.ui.internal.forms.widgets.FormsResources;
import org.eclipse.ui.plugin.AbstractUIPlugin;
import org.osgi.framework.BundleContext;

public class FormsPlugin
extends AbstractUIPlugin {
    public void stop(BundleContext context) throws Exception {
        try {
            FormsResources.shutdown();
        }
        finally {
            super.stop(context);
        }
    }
}

