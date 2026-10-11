/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.equinox.internal.frameworkadmin.equinox.Messages
 *  org.eclipse.equinox.internal.frameworkadmin.utils.Utils
 *  org.eclipse.equinox.internal.simpleconfigurator.utils.BundleInfo
 *  org.osgi.framework.Version
 */
package org.eclipse.equinox.internal.simpleconfigurator.manipulator;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.net.URI;
import java.util.Arrays;
import java.util.Comparator;
import org.eclipse.equinox.internal.frameworkadmin.equinox.Messages;
import org.eclipse.equinox.internal.frameworkadmin.utils.Utils;
import org.eclipse.equinox.internal.simpleconfigurator.utils.BundleInfo;
import org.osgi.framework.Version;

public class SimpleConfiguratorManipulatorUtils {
    private static final String VERSION_PREFIX = "#version=";
    private static final String VERSION_1 = "1";
    private static final Version OLD_STYLE_SIMPLE_CONFIGURATOR_VERSION = new Version("1.0.100.v20081206");
    private static final Version DEFAULT_ENCODING_CONFIGURATOR_VERSION = new Version("2.0.0.v20100329");

    public static void writeConfiguration(BundleInfo[] simpleInfos, File outputFile) throws IOException {
        IOException caughtException;
        block17: {
            if (!Utils.createParentDir((File)outputFile)) {
                throw new IllegalStateException(Messages.exception_failedToCreateDir);
            }
            caughtException = null;
            FileOutputStream stream = null;
            try {
                try {
                    stream = new FileOutputStream(outputFile);
                    SimpleConfiguratorManipulatorUtils.writeConfiguration(simpleInfos, stream);
                }
                catch (IOException e) {
                    caughtException = e;
                    try {
                        if (stream != null) {
                            ((OutputStream)stream).close();
                        }
                        break block17;
                    }
                    catch (IOException e2) {
                        if (caughtException != null) {
                            caughtException = e2;
                        }
                        break block17;
                    }
                }
            }
            catch (Throwable throwable) {
                block18: {
                    try {
                        if (stream != null) {
                            ((OutputStream)stream).close();
                        }
                    }
                    catch (IOException e) {
                        if (caughtException == null) break block18;
                        caughtException = e;
                    }
                }
                throw throwable;
            }
            try {
                if (stream != null) {
                    ((OutputStream)stream).close();
                }
            }
            catch (IOException e) {
                if (caughtException == null) break block17;
                caughtException = e;
            }
        }
        if (caughtException != null) {
            throw caughtException;
        }
    }

    public static void writeConfiguration(BundleInfo[] simpleInfos, OutputStream stream) throws IOException {
        Arrays.sort(simpleInfos, new Comparator(){

            public int compare(Object o1, Object o2) {
                if (o1 instanceof BundleInfo && o2 instanceof BundleInfo) {
                    return ((BundleInfo)o1).getSymbolicName().compareTo(((BundleInfo)o2).getSymbolicName());
                }
                return 0;
            }
        });
        BufferedWriter writer = null;
        boolean oldStyle = false;
        boolean utf8 = true;
        int i = 0;
        while (i < simpleInfos.length) {
            if ("org.eclipse.equinox.simpleconfigurator".equals(simpleInfos[i].getSymbolicName())) {
                Version version = new Version(simpleInfos[i].getVersion());
                if (version.compareTo(OLD_STYLE_SIMPLE_CONFIGURATOR_VERSION) < 0) {
                    oldStyle = true;
                }
                if (version.compareTo(DEFAULT_ENCODING_CONFIGURATOR_VERSION) > 0) break;
                utf8 = false;
                break;
            }
            ++i;
        }
        if (utf8) {
            writer = new BufferedWriter(new OutputStreamWriter(stream, "UTF-8"));
            writer.write("#encoding=UTF-8");
            writer.newLine();
        } else {
            writer = new BufferedWriter(new OutputStreamWriter(stream));
        }
        writer.write(SimpleConfiguratorManipulatorUtils.createVersionLine());
        writer.newLine();
        i = 0;
        while (i < simpleInfos.length) {
            writer.write(SimpleConfiguratorManipulatorUtils.createBundleInfoLine(simpleInfos[i], oldStyle));
            writer.newLine();
            ++i;
        }
        writer.flush();
    }

    public static String createVersionLine() {
        return "#version=1";
    }

    public static String createBundleInfoLine(BundleInfo bundleInfo, boolean oldStyle) {
        StringBuffer buffer = new StringBuffer();
        buffer.append(bundleInfo.getSymbolicName());
        buffer.append(',');
        buffer.append(bundleInfo.getVersion());
        buffer.append(',');
        buffer.append(SimpleConfiguratorManipulatorUtils.createBundleLocation(bundleInfo.getLocation(), oldStyle));
        buffer.append(',');
        buffer.append(bundleInfo.getStartLevel());
        buffer.append(',');
        buffer.append(bundleInfo.isMarkedAsStarted());
        return buffer.toString();
    }

    public static String createBundleLocation(URI location, boolean oldStyle) {
        if (oldStyle) {
            String scheme = location.getScheme();
            if (scheme == null) {
                scheme = "file";
            }
            return String.valueOf(scheme) + ':' + location.getSchemeSpecificPart();
        }
        String result = location.toString();
        int commaIndex = result.indexOf(44);
        while (commaIndex != -1) {
            result = String.valueOf(result.substring(0, commaIndex)) + "%2C" + result.substring(commaIndex + 1);
            commaIndex = result.indexOf(44);
        }
        return result;
    }
}

