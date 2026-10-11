/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.baseadaptor;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Dictionary;
import java.util.Hashtable;
import org.eclipse.core.runtime.internal.adaptor.EclipseAdaptorMsg;
import org.eclipse.osgi.baseadaptor.BaseData;
import org.eclipse.osgi.framework.debug.Debug;
import org.eclipse.osgi.framework.util.Headers;
import org.eclipse.osgi.framework.util.ObjectPool;
import org.eclipse.osgi.internal.baseadaptor.InvalidVersion;
import org.eclipse.osgi.util.NLS;
import org.osgi.framework.BundleContext;
import org.osgi.framework.BundleException;
import org.osgi.framework.ServiceRegistration;
import org.osgi.framework.Version;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class AdaptorUtil {
    public static final byte NULL = 0;
    public static final byte OBJECT = 1;
    static /* synthetic */ Class class$0;

    public static void copyDir(File inDir, File outDir) throws IOException {
        String[] files = inDir.list();
        if (files != null && files.length > 0) {
            outDir.mkdir();
            int i = 0;
            while (i < files.length) {
                File inFile = new File(inDir, files[i]);
                File outFile = new File(outDir, files[i]);
                if (inFile.isDirectory()) {
                    AdaptorUtil.copyDir(inFile, outFile);
                } else {
                    FileInputStream in = new FileInputStream(inFile);
                    AdaptorUtil.readFile(in, outFile);
                }
                ++i;
            }
        }
    }

    public static void readFile(InputStream in, File file) throws IOException {
        FileOutputStream fos = null;
        try {
            try {
                int count;
                fos = new FileOutputStream(file);
                byte[] buffer = new byte[1024];
                while ((count = in.read(buffer, 0, buffer.length)) > 0) {
                    fos.write(buffer, 0, count);
                }
            }
            catch (IOException e) {
                if (Debug.DEBUG_GENERAL) {
                    Debug.println("Unable to read file");
                    Debug.printStackTrace(e);
                }
                throw e;
            }
        }
        catch (Throwable throwable) {
            if (in != null) {
                try {
                    in.close();
                }
                catch (IOException iOException) {}
            }
            if (fos != null) {
                try {
                    fos.close();
                }
                catch (IOException iOException) {}
            }
            throw throwable;
        }
        if (in != null) {
            try {
                in.close();
            }
            catch (IOException iOException) {}
        }
        if (fos != null) {
            try {
                fos.close();
            }
            catch (IOException iOException) {}
        }
    }

    public static boolean rm(File file) {
        if (file.exists()) {
            String[] list;
            if (file.isDirectory() && (list = file.list()) != null) {
                int len = list.length;
                int i = 0;
                while (i < len) {
                    AdaptorUtil.rm(new File(file, list[i]));
                    ++i;
                }
            }
            if (Debug.DEBUG_GENERAL) {
                if (file.isDirectory()) {
                    Debug.println(new StringBuffer("rmdir ").append(file.getPath()).toString());
                } else {
                    Debug.println(new StringBuffer("rm ").append(file.getPath()).toString());
                }
            }
            boolean success = file.delete();
            if (Debug.DEBUG_GENERAL && !success) {
                Debug.println("  rm failed!!");
            }
            return success;
        }
        return true;
    }

    public static String readString(DataInputStream in, boolean intern) throws IOException {
        byte type = in.readByte();
        if (type == 0) {
            return null;
        }
        return intern ? in.readUTF().intern() : in.readUTF();
    }

    public static void writeStringOrNull(DataOutputStream out, String string) throws IOException {
        if (string == null) {
            out.writeByte(0);
        } else {
            out.writeByte(1);
            out.writeUTF(string);
        }
    }

    public static Version loadVersion(DataInputStream in) throws IOException {
        String versionString = AdaptorUtil.readString(in, false);
        try {
            return (Version)ObjectPool.intern(Version.parseVersion(versionString));
        }
        catch (IllegalArgumentException illegalArgumentException) {
            return new InvalidVersion(versionString);
        }
    }

    public static ServiceRegistration<?> register(String name, Object service, BundleContext context) {
        Hashtable<String, Object> properties = new Hashtable<String, Object>(7);
        Dictionary<String, String> headers = context.getBundle().getHeaders();
        ((Dictionary)properties).put("service.vendor", headers.get("Bundle-Vendor"));
        ((Dictionary)properties).put("service.ranking", new Integer(Integer.MAX_VALUE));
        ((Dictionary)properties).put("service.pid", new StringBuffer(String.valueOf(context.getBundle().getBundleId())).append(".").append(service.getClass().getName()).toString());
        return context.registerService(name, service, properties);
    }

    public static Dictionary<String, String> loadManifestFrom(BaseData bundledata) throws BundleException {
        URL url = bundledata.getEntry("META-INF/MANIFEST.MF");
        if (url == null) {
            return null;
        }
        try {
            return Headers.parseManifest(url.openStream());
        }
        catch (IOException e) {
            throw new BundleException(NLS.bind(EclipseAdaptorMsg.ECLIPSE_DATA_ERROR_READING_MANIFEST, bundledata.getLocation()), 3, e);
        }
    }

    public static boolean canWrite(File installDir) {
        if (!installDir.canWrite()) {
            return false;
        }
        if (!installDir.isDirectory()) {
            return false;
        }
        File fileTest = null;
        try {
            try {
                fileTest = File.createTempFile("writtableArea", ".dll", installDir);
            }
            catch (IOException iOException) {
                if (fileTest != null) {
                    fileTest.delete();
                }
                return false;
            }
        }
        finally {
            if (fileTest != null) {
                fileTest.delete();
            }
        }
        return true;
    }

    public static URL encodeFileURL(File file) throws MalformedURLException {
        block8: {
            try {
                Class<?> clazz = class$0;
                if (clazz == null) {
                    try {
                        clazz = class$0 = Class.forName("java.io.File");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                Method toURI = clazz.getMethod("toURI", null);
                Object uri = toURI.invoke(file, null);
                Method toURL = uri.getClass().getMethod("toURL", null);
                return (URL)toURL.invoke(uri, null);
            }
            catch (NoSuchMethodException noSuchMethodException) {
            }
            catch (IllegalAccessException illegalAccessException) {
            }
            catch (InvocationTargetException e) {
                if (!(e.getTargetException() instanceof MalformedURLException)) break block8;
                throw (MalformedURLException)e.getTargetException();
            }
        }
        return file.toURL();
    }
}

