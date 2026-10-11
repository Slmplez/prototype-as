/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.runtime.internal.adaptor;

import java.io.File;
import java.io.IOException;
import java.net.URL;
import org.eclipse.core.runtime.internal.adaptor.EclipseAdaptorMsg;
import org.eclipse.core.runtime.internal.adaptor.LocationHelper;
import org.eclipse.core.runtime.internal.adaptor.Locker;
import org.eclipse.core.runtime.internal.adaptor.Locker_JavaIo;
import org.eclipse.core.runtime.internal.adaptor.Locker_JavaNio;
import org.eclipse.osgi.framework.internal.core.FrameworkProperties;
import org.eclipse.osgi.service.datalocation.Location;
import org.eclipse.osgi.util.NLS;

public class BasicLocation
implements Location {
    private final boolean isReadOnly;
    private URL location = null;
    private Location parent;
    private final URL defaultValue;
    private final String property;
    private final String dataAreaPrefix;
    private File lockFile;
    private Locker locker;
    public static final String PROP_OSGI_LOCKING = "osgi.locking";
    private static String DEFAULT_LOCK_FILENAME = ".metadata/.lock";
    public static boolean DEBUG;

    private static boolean isRunningWithNio() {
        try {
            Class.forName("java.nio.channels.FileLock");
        }
        catch (ClassNotFoundException classNotFoundException) {
            return false;
        }
        return true;
    }

    public static Locker createLocker(File lock, String lockMode) {
        if (lockMode == null) {
            lockMode = FrameworkProperties.getProperty(PROP_OSGI_LOCKING);
        }
        if ("none".equals(lockMode)) {
            return new MockLocker();
        }
        if ("java.io".equals(lockMode)) {
            return new Locker_JavaIo(lock);
        }
        if ("java.nio".equals(lockMode)) {
            if (BasicLocation.isRunningWithNio()) {
                return new Locker_JavaNio(lock);
            }
            return new Locker_JavaIo(lock);
        }
        if (BasicLocation.isRunningWithNio()) {
            return new Locker_JavaNio(lock);
        }
        return new Locker_JavaIo(lock);
    }

    public BasicLocation(String property, URL defaultValue, boolean isReadOnly, String dataAreaPrefix) {
        this.property = property;
        this.defaultValue = defaultValue;
        this.isReadOnly = isReadOnly;
        this.dataAreaPrefix = dataAreaPrefix == null ? "" : dataAreaPrefix;
    }

    public boolean allowsDefault() {
        return this.defaultValue != null;
    }

    public URL getDefault() {
        return this.defaultValue;
    }

    public synchronized Location getParentLocation() {
        return this.parent;
    }

    public synchronized URL getURL() {
        if (this.location == null && this.defaultValue != null) {
            this.setURL(this.defaultValue, false);
        }
        return this.location;
    }

    public synchronized boolean isSet() {
        return this.location != null;
    }

    public boolean isReadOnly() {
        return this.isReadOnly;
    }

    public boolean setURL(URL value, boolean lock) throws IllegalStateException {
        try {
            return this.set(value, lock);
        }
        catch (IOException iOException) {
            return false;
        }
    }

    public synchronized boolean set(URL value, boolean lock) throws IllegalStateException, IOException {
        return this.set(value, lock, null);
    }

    public synchronized boolean set(URL value, boolean lock, String lockFilePath) throws IllegalStateException, IOException {
        if (this.location != null) {
            throw new IllegalStateException(EclipseAdaptorMsg.ECLIPSE_CANNOT_CHANGE_LOCATION);
        }
        File file = null;
        if (value.getProtocol().equalsIgnoreCase("file")) {
            File givenLockFile;
            try {
                String basePath = new File(value.getFile()).getCanonicalPath();
                value = LocationHelper.buildURL("file:" + basePath, true);
            }
            catch (IOException iOException) {}
            file = lockFilePath != null && lockFilePath.length() > 0 ? ((givenLockFile = new File(lockFilePath)).isAbsolute() ? givenLockFile : new File(value.getFile(), lockFilePath)) : new File(value.getFile(), DEFAULT_LOCK_FILENAME);
        }
        boolean bl = lock = lock && !this.isReadOnly;
        if (lock && !this.lock(file, value)) {
            return false;
        }
        this.lockFile = file;
        this.location = value;
        if (this.property != null) {
            FrameworkProperties.setProperty(this.property, this.location.toExternalForm());
        }
        return lock;
    }

    public synchronized void setParent(Location value) {
        this.parent = value;
    }

    public synchronized boolean lock() throws IOException {
        if (!this.isSet()) {
            throw new IOException(EclipseAdaptorMsg.location_notSet);
        }
        return this.lock(this.lockFile, this.location);
    }

    public synchronized boolean isLocked() throws IOException {
        if (!this.isSet()) {
            return false;
        }
        return this.isLocked(this.lockFile);
    }

    private boolean lock(File lock, URL locationValue) throws IOException {
        if (this.isReadOnly) {
            throw new IOException(NLS.bind(EclipseAdaptorMsg.location_folderReadOnly, lock));
        }
        if (lock == null) {
            if (locationValue != null && !"file".equalsIgnoreCase(locationValue.getProtocol())) {
                throw new IOException(NLS.bind(EclipseAdaptorMsg.location_notFileProtocol, locationValue));
            }
            throw new IllegalStateException(EclipseAdaptorMsg.location_noLockFile);
        }
        if (this.isLocked()) {
            return false;
        }
        File parentFile = new File(lock.getParent());
        if (!parentFile.exists() && !parentFile.mkdirs()) {
            throw new IOException(NLS.bind(EclipseAdaptorMsg.location_folderReadOnly, parentFile));
        }
        this.setLocker(lock);
        if (this.locker == null) {
            return true;
        }
        boolean locked = false;
        try {
            boolean bl = locked = this.locker.lock();
            return bl;
        }
        finally {
            if (!locked) {
                this.locker = null;
            }
        }
    }

    private boolean isLocked(File lock) throws IOException {
        if (lock == null || this.isReadOnly) {
            return true;
        }
        if (!lock.exists()) {
            return false;
        }
        this.setLocker(lock);
        return this.locker.isLocked();
    }

    private void setLocker(File lock) {
        if (this.locker != null) {
            return;
        }
        String lockMode = FrameworkProperties.getProperty(PROP_OSGI_LOCKING);
        this.locker = BasicLocation.createLocker(lock, lockMode);
    }

    public synchronized void release() {
        if (this.locker != null) {
            this.locker.release();
        }
    }

    public Location createLocation(Location parentLocation, URL defaultLocation, boolean readonly) {
        BasicLocation result = new BasicLocation(null, defaultLocation, readonly, this.dataAreaPrefix);
        result.setParent(parentLocation);
        return result;
    }

    public URL getDataArea(String filename) throws IOException {
        URL base = this.getURL();
        if (base == null) {
            throw new IOException(EclipseAdaptorMsg.location_notSet);
        }
        String prefix = base.toExternalForm();
        if (prefix.length() > 0 && prefix.charAt(prefix.length() - 1) != '/') {
            prefix = String.valueOf(prefix) + '/';
        }
        if ((filename = filename.replace('\\', '/')).length() > 0 && filename.charAt(0) == '/') {
            filename.substring(1);
        }
        return new URL(String.valueOf(prefix) + this.dataAreaPrefix + filename);
    }

    static class MockLocker
    implements Locker {
        MockLocker() {
        }

        public boolean lock() throws IOException {
            return true;
        }

        public boolean isLocked() {
            return false;
        }

        public void release() {
        }
    }
}

