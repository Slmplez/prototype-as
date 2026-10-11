/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.pde.internal.build.builder;

import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Properties;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.osgi.util.NLS;
import org.eclipse.pde.internal.build.BundleHelper;
import org.eclipse.pde.internal.build.Messages;
import org.eclipse.pde.internal.build.Utils;

public class DevClassPathHelper {
    protected boolean inDevelopmentMode = false;
    protected String[] devDefaultClasspath;
    protected Properties devProperties = null;

    public DevClassPathHelper(String devInfo) {
        String osgiDev = devInfo;
        if (osgiDev != null) {
            try {
                this.inDevelopmentMode = true;
                URL location = new URL(osgiDev);
                this.devProperties = DevClassPathHelper.load(location);
                this.devDefaultClasspath = Utils.getArrayFromString(this.devProperties.getProperty("*"));
            }
            catch (MalformedURLException malformedURLException) {
                this.devDefaultClasspath = Utils.getArrayFromString(osgiDev);
            }
        }
    }

    public String[] getDevClassPath(String id) {
        String entry;
        String[] result = null;
        if (id != null && this.devProperties != null && (entry = this.devProperties.getProperty(id)) != null) {
            result = Utils.getArrayFromString(entry);
        }
        if (result == null) {
            result = this.devDefaultClasspath;
        }
        return result;
    }

    public boolean inDevelopmentMode() {
        return this.inDevelopmentMode;
    }

    private static Properties load(URL url) {
        Properties props = new Properties();
        try {
            InputStream is = null;
            try {
                is = url.openStream();
                props.load(is);
            }
            finally {
                if (is != null) {
                    is.close();
                }
            }
        }
        catch (IOException iOException) {
            String message = NLS.bind((String)Messages.exception_missingFile, (Object)url.toExternalForm());
            BundleHelper.getDefault().getLog().log((IStatus)new Status(2, "org.eclipse.pde.build", 10, message, null));
        }
        return props;
    }
}

