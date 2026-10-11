/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.ant.core.IAntPropertyValueProvider
 *  org.eclipse.core.runtime.FileLocator
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.pde.internal.build.properties;

import java.io.IOException;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;
import org.eclipse.ant.core.IAntPropertyValueProvider;
import org.eclipse.core.runtime.FileLocator;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.Status;
import org.eclipse.osgi.util.NLS;
import org.eclipse.pde.internal.build.BundleHelper;
import org.eclipse.pde.internal.build.Messages;

public class PDEProperties
implements IAntPropertyValueProvider {
    private static final String PREFIX = "eclipse.pdebuild";
    private static final String HOME = "eclipse.pdebuild.home";
    private static final String SCRIPTS = "eclipse.pdebuild.scripts";
    private static final String TEMPLATES = "eclipse.pdebuild.templates";
    private static final Map cache = new HashMap();

    public String getAntPropertyValue(String antPropertyName) {
        String searchedEntry = null;
        if (HOME.equals(antPropertyName)) {
            searchedEntry = ".";
        }
        if (SCRIPTS.equals(antPropertyName)) {
            searchedEntry = "scripts";
        }
        if (TEMPLATES.equals(antPropertyName)) {
            searchedEntry = "templates";
        }
        if (searchedEntry == null) {
            return null;
        }
        try {
            String result = (String)cache.get(searchedEntry);
            if (result == null) {
                URL foundEntry = Platform.getBundle((String)"org.eclipse.pde.build").getEntry(searchedEntry);
                if (foundEntry == null) {
                    BundleHelper.getDefault().getLog().log((IStatus)new Status(4, "org.eclipse.pde.build", 25, NLS.bind((String)Messages.exception_missing_pdebuild_folder, (Object)antPropertyName), null));
                } else {
                    result = FileLocator.toFileURL((URL)foundEntry).getPath();
                    cache.put(searchedEntry, result);
                }
            }
            return result;
        }
        catch (IOException iOException) {
            return null;
        }
    }
}

