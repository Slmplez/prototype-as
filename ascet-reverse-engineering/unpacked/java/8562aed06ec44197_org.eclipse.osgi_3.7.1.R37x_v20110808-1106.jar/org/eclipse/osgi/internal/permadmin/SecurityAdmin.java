/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.permadmin;

import java.io.BufferedReader;
import java.io.DataInputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.math.BigInteger;
import java.net.URL;
import java.security.AccessControlContext;
import java.security.AllPermission;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.Permission;
import java.security.PermissionCollection;
import java.security.Principal;
import java.security.ProtectionDomain;
import java.security.PublicKey;
import java.security.SignatureException;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateExpiredException;
import java.security.cert.CertificateNotYetValidException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.Dictionary;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.eclipse.osgi.framework.adaptor.BundleProtectionDomain;
import org.eclipse.osgi.framework.adaptor.PermissionStorage;
import org.eclipse.osgi.framework.internal.core.AbstractBundle;
import org.eclipse.osgi.framework.internal.core.Framework;
import org.eclipse.osgi.internal.permadmin.BundlePermissions;
import org.eclipse.osgi.internal.permadmin.EquinoxSecurityManager;
import org.eclipse.osgi.internal.permadmin.PermissionAdminTable;
import org.eclipse.osgi.internal.permadmin.PermissionInfoCollection;
import org.eclipse.osgi.internal.permadmin.SecurePermissionStorage;
import org.eclipse.osgi.internal.permadmin.SecurityRow;
import org.eclipse.osgi.internal.permadmin.SecurityRowSnapShot;
import org.eclipse.osgi.internal.permadmin.SecurityTable;
import org.eclipse.osgi.internal.permadmin.SecurityTableUpdate;
import org.osgi.framework.Bundle;
import org.osgi.framework.BundleContext;
import org.osgi.framework.BundleException;
import org.osgi.framework.ServiceReference;
import org.osgi.framework.Version;
import org.osgi.service.condpermadmin.ConditionInfo;
import org.osgi.service.condpermadmin.ConditionalPermissionAdmin;
import org.osgi.service.condpermadmin.ConditionalPermissionInfo;
import org.osgi.service.condpermadmin.ConditionalPermissionUpdate;
import org.osgi.service.permissionadmin.PermissionAdmin;
import org.osgi.service.permissionadmin.PermissionInfo;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public final class SecurityAdmin
implements PermissionAdmin,
ConditionalPermissionAdmin {
    private static final PermissionCollection DEFAULT_DEFAULT;
    private static final String ADMIN_IMPLIED_ACTIONS = "resource,metadata,class,context";
    private static final PermissionInfo[] EMPTY_PERM_INFO;
    private final PermissionAdminTable permAdminTable = new PermissionAdminTable();
    private SecurityTable condAdminTable;
    private PermissionInfoCollection permAdminDefaults;
    private long timeStamp = 0L;
    private long nextID = System.currentTimeMillis();
    private final PermissionStorage permissionStorage;
    private final Object lock = new Object();
    private final Framework framework;
    private final PermissionInfo[] impliedPermissionInfos;
    private final EquinoxSecurityManager supportedSecurityManager;
    static /* synthetic */ Class class$0;

    static {
        AllPermission allPerm = new AllPermission();
        DEFAULT_DEFAULT = allPerm.newPermissionCollection();
        if (DEFAULT_DEFAULT != null) {
            DEFAULT_DEFAULT.add(allPerm);
        }
        EMPTY_PERM_INFO = new PermissionInfo[0];
    }

    private SecurityAdmin(EquinoxSecurityManager supportedSecurityManager, Framework framework, PermissionInfo[] impliedPermissionInfos, PermissionInfoCollection permAdminDefaults) {
        this.supportedSecurityManager = supportedSecurityManager;
        this.framework = framework;
        this.impliedPermissionInfos = impliedPermissionInfos;
        this.permAdminDefaults = permAdminDefaults;
        this.permissionStorage = null;
    }

    public SecurityAdmin(EquinoxSecurityManager supportedSecurityManager, Framework framework, PermissionStorage permissionStorage) throws IOException {
        String[] encodedCondPermInfos;
        String[] locations;
        this.supportedSecurityManager = supportedSecurityManager;
        this.framework = framework;
        this.permissionStorage = new SecurePermissionStorage(permissionStorage);
        this.impliedPermissionInfos = SecurityAdmin.getPermissionInfos(this.getClass().getResource("implied.permissions"), framework);
        String[] encodedDefaultInfos = permissionStorage.getPermissionData(null);
        PermissionInfo[] defaultInfos = SecurityAdmin.getPermissionInfos(encodedDefaultInfos);
        if (defaultInfos != null) {
            this.permAdminDefaults = new PermissionInfoCollection(defaultInfos);
        }
        if ((locations = permissionStorage.getLocations()) != null) {
            int i = 0;
            while (i < locations.length) {
                String[] encodedLocationInfos = permissionStorage.getPermissionData(locations[i]);
                if (encodedLocationInfos != null) {
                    PermissionInfo[] locationInfos = SecurityAdmin.getPermissionInfos(encodedLocationInfos);
                    this.permAdminTable.setPermissions(locations[i], locationInfos);
                }
                ++i;
            }
        }
        if ((encodedCondPermInfos = permissionStorage.getConditionalPermissionInfos()) == null) {
            this.condAdminTable = new SecurityTable(this, new SecurityRow[0]);
        } else {
            SecurityRow[] rows = new SecurityRow[encodedCondPermInfos.length];
            try {
                int i = 0;
                while (i < rows.length) {
                    rows[i] = SecurityRow.createSecurityRow(this, encodedCondPermInfos[i]);
                    ++i;
                }
            }
            catch (IllegalArgumentException illegalArgumentException) {
                rows = new SecurityRow[]{};
            }
            this.condAdminTable = new SecurityTable(this, rows);
        }
    }

    private static PermissionInfo[] getPermissionInfos(String[] encodedInfos) {
        if (encodedInfos == null) {
            return null;
        }
        PermissionInfo[] results = new PermissionInfo[encodedInfos.length];
        int i = 0;
        while (i < results.length) {
            results[i] = new PermissionInfo(encodedInfos[i]);
            ++i;
        }
        return results;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    boolean checkPermission(Permission permission, BundlePermissions bundlePermissions) {
        PermissionInfoCollection curPermAdminDefaults;
        SecurityTable curCondAdminTable;
        PermissionInfoCollection locationCollection;
        Object object = this.lock;
        synchronized (object) {
            Bundle bundle = bundlePermissions.getBundle();
            locationCollection = bundle instanceof AbstractBundle ? this.permAdminTable.getCollection(((AbstractBundle)bundle).getBundleData().getLocation()) : null;
            curCondAdminTable = this.condAdminTable;
            curPermAdminDefaults = this.permAdminDefaults;
        }
        if (locationCollection != null) {
            return locationCollection.implies(permission);
        }
        if (curCondAdminTable.isEmpty()) {
            return curPermAdminDefaults != null ? curPermAdminDefaults.implies(permission) : DEFAULT_DEFAULT.implies(permission);
        }
        int result = curCondAdminTable.evaluate(bundlePermissions, permission);
        if ((result & 1) != 0) {
            return true;
        }
        if ((result & 2) != 0) {
            return false;
        }
        return (result & 8) != 0;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public PermissionInfo[] getDefaultPermissions() {
        Object object = this.lock;
        synchronized (object) {
            block4: {
                if (this.permAdminDefaults != null) break block4;
                return null;
            }
            return this.permAdminDefaults.getPermissionInfos();
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public String[] getLocations() {
        Object object = this.lock;
        synchronized (object) {
            String[] results = this.permAdminTable.getLocations();
            return results.length == 0 ? null : results;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public PermissionInfo[] getPermissions(String location) {
        Object object = this.lock;
        synchronized (object) {
            return this.permAdminTable.getPermissions(location);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public void setDefaultPermissions(PermissionInfo[] permissions) {
        SecurityAdmin.checkAllPermission();
        Object object = this.lock;
        synchronized (object) {
            this.permAdminDefaults = permissions == null ? null : new PermissionInfoCollection(permissions);
            try {
                this.permissionStorage.setPermissionData(null, SecurityAdmin.getEncodedPermissionInfos(permissions));
            }
            catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    private static void checkAllPermission() {
        SecurityManager sm = System.getSecurityManager();
        if (sm != null) {
            sm.checkPermission(new AllPermission());
        }
    }

    private static String[] getEncodedPermissionInfos(PermissionInfo[] permissions) {
        if (permissions == null) {
            return null;
        }
        String[] encoded = new String[permissions.length];
        int i = 0;
        while (i < encoded.length) {
            encoded[i] = permissions[i].getEncoded();
            ++i;
        }
        return encoded;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public void setPermissions(String location, PermissionInfo[] permissions) {
        SecurityAdmin.checkAllPermission();
        Object object = this.lock;
        synchronized (object) {
            this.permAdminTable.setPermissions(location, permissions);
            try {
                this.permissionStorage.setPermissionData(location, SecurityAdmin.getEncodedPermissionInfos(permissions));
            }
            catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    void delete(SecurityRow securityRow, boolean firstTry) {
        ConditionalPermissionUpdate update = this.newConditionalPermissionUpdate();
        List<ConditionalPermissionInfo> rows = update.getConditionalPermissionInfos();
        Iterator<ConditionalPermissionInfo> iRows = rows.iterator();
        while (iRows.hasNext()) {
            ConditionalPermissionInfo info = iRows.next();
            if (!securityRow.getName().equals(info.getName())) continue;
            iRows.remove();
            Object object = this.lock;
            synchronized (object) {
                if (!update.commit() && firstTry) {
                    this.delete(securityRow, false);
                }
                break;
            }
        }
    }

    @Override
    public ConditionalPermissionInfo addConditionalPermissionInfo(ConditionInfo[] conds, PermissionInfo[] perms) {
        return this.setConditionalPermissionInfo(null, conds, perms, true);
    }

    @Override
    public ConditionalPermissionInfo newConditionalPermissionInfo(String name, ConditionInfo[] conditions, PermissionInfo[] permissions, String decision) {
        return new SecurityRowSnapShot(name, conditions, permissions, decision);
    }

    @Override
    public ConditionalPermissionInfo newConditionalPermissionInfo(String encoded) {
        return SecurityRow.createSecurityRowSnapShot(encoded);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public ConditionalPermissionUpdate newConditionalPermissionUpdate() {
        Object object = this.lock;
        synchronized (object) {
            return new SecurityTableUpdate(this, this.condAdminTable.getRows(), this.timeStamp);
        }
    }

    @Override
    public AccessControlContext getAccessControlContext(String[] signers) {
        SecurityAdmin snapShot = this.getSnapShot();
        return new AccessControlContext(new ProtectionDomain[]{this.createProtectionDomain(SecurityAdmin.createMockBundle(signers), snapShot)});
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public ConditionalPermissionInfo getConditionalPermissionInfo(String name) {
        Object object = this.lock;
        synchronized (object) {
            return this.condAdminTable.getRow(name);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public Enumeration<ConditionalPermissionInfo> getConditionalPermissionInfos() {
        Object object = this.lock;
        synchronized (object) {
            SecurityRow[] rows = this.condAdminTable.getRows();
            ArrayList<SecurityRow> vRows = new ArrayList<SecurityRow>(rows.length);
            int i = 0;
            while (i < rows.length) {
                vRows.add(rows[i]);
                ++i;
            }
            return Collections.enumeration(vRows);
        }
    }

    @Override
    public ConditionalPermissionInfo setConditionalPermissionInfo(String name, ConditionInfo[] conds, PermissionInfo[] perms) {
        return this.setConditionalPermissionInfo(name, conds, perms, true);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private SecurityAdmin getSnapShot() {
        SecurityAdmin sa;
        Object object = this.lock;
        synchronized (object) {
            sa = new SecurityAdmin(this.supportedSecurityManager, this.framework, this.impliedPermissionInfos, this.permAdminDefaults);
            SecurityRow[] rows = this.condAdminTable.getRows();
            SecurityRow[] rowsSnapShot = new SecurityRow[rows.length];
            int i = 0;
            while (i < rows.length) {
                rowsSnapShot[i] = new SecurityRow(sa, rows[i].getName(), rows[i].getConditionInfos(), rows[i].getPermissionInfos(), rows[i].getAccessDecision());
                ++i;
            }
            sa.condAdminTable = new SecurityTable(sa, rowsSnapShot);
        }
        return sa;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private ConditionalPermissionInfo setConditionalPermissionInfo(String name, ConditionInfo[] conds, PermissionInfo[] perms, boolean firstTry) {
        ConditionalPermissionUpdate update = this.newConditionalPermissionUpdate();
        List<ConditionalPermissionInfo> rows = update.getConditionalPermissionInfos();
        ConditionalPermissionInfo newInfo = this.newConditionalPermissionInfo(name, conds, perms, "allow");
        int index = -1;
        if (name != null) {
            int i = 0;
            while (i < rows.size() && index < 0) {
                ConditionalPermissionInfo info = rows.get(i);
                if (name.equals(info.getName())) {
                    index = i;
                }
                ++i;
            }
        }
        if (index < 0) {
            rows.add(0, newInfo);
            index = 0;
        } else {
            rows.set(index, newInfo);
        }
        Object object = this.lock;
        synchronized (object) {
            if (!update.commit() && firstTry) {
                this.setConditionalPermissionInfo(name, conds, perms, false);
            }
            return this.condAdminTable.getRow(index);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    boolean commit(List<ConditionalPermissionInfo> rows, long updateStamp) {
        SecurityAdmin.checkAllPermission();
        Object object = this.lock;
        synchronized (object) {
            block10: {
                if (updateStamp == this.timeStamp) break block10;
                return false;
            }
            SecurityRow[] newRows = new SecurityRow[rows.size()];
            ArrayList names = new ArrayList();
            int i = 0;
            while (i < newRows.length) {
                ConditionalPermissionInfo rowObj = rows.get(i);
                if (!(rowObj instanceof ConditionalPermissionInfo)) {
                    throw new IllegalStateException(new StringBuffer("Invalid type \"").append(rowObj.getClass().getName()).append("\" at row: ").append(i).toString());
                }
                ConditionalPermissionInfo infoBaseRow = rowObj;
                String name = infoBaseRow.getName();
                if (name == null) {
                    name = this.generateName();
                }
                if (names.contains(name)) {
                    throw new IllegalStateException(new StringBuffer("Duplicate name \"").append(name).append("\" at row: ").append(i).toString());
                }
                newRows[i] = new SecurityRow(this, name, infoBaseRow.getConditionInfos(), infoBaseRow.getPermissionInfos(), infoBaseRow.getAccessDecision());
                ++i;
            }
            this.condAdminTable = new SecurityTable(this, newRows);
            try {
                this.permissionStorage.saveConditionalPermissionInfos(this.condAdminTable.getEncodedRows());
            }
            catch (IOException e) {
                e.printStackTrace();
            }
            ++this.timeStamp;
            return true;
        }
    }

    private String generateName() {
        return new StringBuffer("generated_").append(Long.toString(this.nextID++)).toString();
    }

    public BundleProtectionDomain createProtectionDomain(Bundle bundle) {
        return this.createProtectionDomain(bundle, this);
    }

    private BundleProtectionDomain createProtectionDomain(Bundle bundle, SecurityAdmin sa) {
        PermissionInfoCollection impliedPermissions = this.getImpliedPermission(bundle);
        PermissionInfo[] restrictedInfos = this.getFileRelativeInfos(SecurityAdmin.getPermissionInfos(bundle.getEntry("OSGI-INF/permissions.perm"), this.framework), bundle);
        PermissionInfoCollection restrictedPermissions = restrictedInfos == null ? null : new PermissionInfoCollection(restrictedInfos);
        BundlePermissions bundlePermissions = new BundlePermissions(bundle, sa, impliedPermissions, restrictedPermissions);
        return new BundleProtectionDomain(bundlePermissions, null, bundle);
    }

    private PermissionInfoCollection getImpliedPermission(Bundle bundle) {
        if (this.impliedPermissionInfos == null) {
            return null;
        }
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.osgi.framework.AdminPermission");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        PermissionInfo impliedAdminPermission = new PermissionInfo(clazz.getName(), new StringBuffer("(id=").append(bundle.getBundleId()).append(")").toString(), ADMIN_IMPLIED_ACTIONS);
        PermissionInfo[] bundleImpliedInfos = new PermissionInfo[this.impliedPermissionInfos.length + 1];
        System.arraycopy(this.impliedPermissionInfos, 0, bundleImpliedInfos, 0, this.impliedPermissionInfos.length);
        bundleImpliedInfos[this.impliedPermissionInfos.length] = impliedAdminPermission;
        return new PermissionInfoCollection(this.getFileRelativeInfos(bundleImpliedInfos, bundle));
    }

    private PermissionInfo[] getFileRelativeInfos(PermissionInfo[] permissionInfos, Bundle bundle) {
        if (permissionInfos == null || !(bundle instanceof AbstractBundle)) {
            return permissionInfos;
        }
        PermissionInfo[] results = new PermissionInfo[permissionInfos.length];
        int i = 0;
        while (i < permissionInfos.length) {
            File target;
            File file;
            results[i] = permissionInfos[i];
            if ("java.io.FilePermission".equals(permissionInfos[i].getType()) && !"<<ALL FILES>>".equals(permissionInfos[i].getName()) && !(file = new File(permissionInfos[i].getName())).isAbsolute() && (target = ((AbstractBundle)bundle).getBundleData().getDataFile(permissionInfos[i].getName())) != null) {
                results[i] = new PermissionInfo(permissionInfos[i].getType(), target.getPath(), permissionInfos[i].getActions());
            }
            ++i;
        }
        return results;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void clearCaches() {
        SecurityRow[] condAdminRows;
        PermissionInfoCollection[] permAdminCollections;
        Object object = this.lock;
        synchronized (object) {
            permAdminCollections = this.permAdminTable.getCollections();
            condAdminRows = this.condAdminTable.getRows();
        }
        int i = 0;
        while (i < permAdminCollections.length) {
            permAdminCollections[i].clearPermissionCache();
            ++i;
        }
        i = 0;
        while (i < condAdminRows.length) {
            condAdminRows[i].clearCaches();
            ++i;
        }
    }

    EquinoxSecurityManager getSupportedSecurityManager() {
        return this.supportedSecurityManager != null ? this.supportedSecurityManager : SecurityAdmin.getSupportedSystemSecurityManager();
    }

    private static EquinoxSecurityManager getSupportedSystemSecurityManager() {
        try {
            EquinoxSecurityManager equinoxManager = (EquinoxSecurityManager)System.getSecurityManager();
            return equinoxManager != null && equinoxManager.inCheckPermission() ? equinoxManager : null;
        }
        catch (ClassCastException classCastException) {
            return null;
        }
    }

    private static PermissionInfo[] getPermissionInfos(URL resource, Framework framework) {
        PermissionInfo[] info;
        block21: {
            if (resource == null) {
                return null;
            }
            info = EMPTY_PERM_INFO;
            DataInputStream in = null;
            try {
                try {
                    String line;
                    BufferedReader reader;
                    in = new DataInputStream(resource.openStream());
                    ArrayList<PermissionInfo> permissions = new ArrayList<PermissionInfo>();
                    try {
                        reader = new BufferedReader(new InputStreamReader((InputStream)in, "UTF8"));
                    }
                    catch (UnsupportedEncodingException unsupportedEncodingException) {
                        reader = new BufferedReader(new InputStreamReader(in));
                    }
                    while ((line = reader.readLine()) != null) {
                        if ((line = line.trim()).length() == 0 || line.startsWith("#") || line.startsWith("//")) continue;
                        try {
                            permissions.add(new PermissionInfo(line));
                        }
                        catch (IllegalArgumentException iae) {
                            if (framework == null) continue;
                            framework.publishFrameworkEvent(2, framework.getBundle(0L), iae);
                        }
                    }
                    int size = permissions.size();
                    if (size > 0) {
                        info = permissions.toArray(new PermissionInfo[size]);
                    }
                }
                catch (IOException iOException) {
                    try {
                        if (in != null) {
                            in.close();
                        }
                        break block21;
                    }
                    catch (IOException iOException2) {}
                    break block21;
                }
            }
            catch (Throwable throwable) {
                try {
                    if (in != null) {
                        in.close();
                    }
                }
                catch (IOException iOException) {}
                throw throwable;
            }
            try {
                if (in != null) {
                    in.close();
                }
            }
            catch (IOException iOException) {}
        }
        return info;
    }

    private static Bundle createMockBundle(String[] signers) {
        HashMap<X509Certificate, List<X509Certificate>> signersMap = new HashMap<X509Certificate, List<X509Certificate>>();
        int i = 0;
        while (i < signers.length) {
            List<String> chain = SecurityAdmin.parseDNchain(signers[i]);
            ArrayList<MockX509Certificate> signersList = new ArrayList<MockX509Certificate>();
            MockPrincipal subject = null;
            MockPrincipal issuer = null;
            MockX509Certificate first = null;
            Iterator<String> iChain = chain.iterator();
            while (iChain.hasNext()) {
                subject = issuer == null ? new MockPrincipal(iChain.next()) : issuer;
                issuer = iChain.hasNext() ? new MockPrincipal(iChain.next()) : subject;
                MockX509Certificate cert = new MockX509Certificate(subject, issuer);
                if (first == null) {
                    first = cert;
                }
                signersList.add(cert);
            }
            if (subject != issuer) {
                signersList.add(new MockX509Certificate(issuer, issuer));
            }
            signersMap.put(first, signersList);
            ++i;
        }
        return new MockBundle(signersMap);
    }

    /*
     * Enabled aggressive block sorting
     */
    private static List<String> parseDNchain(String dnChain) {
        if (dnChain == null) {
            throw new IllegalArgumentException("The DN chain must not be null.");
        }
        ArrayList<String> parsed = new ArrayList<String>();
        int startIndex = 0;
        startIndex = SecurityAdmin.skipSpaces(dnChain, startIndex);
        while (startIndex < dnChain.length()) {
            int endIndex = startIndex;
            boolean inQuote = false;
            block6: while (endIndex < dnChain.length()) {
                char c = dnChain.charAt(endIndex);
                switch (c) {
                    case '\"': {
                        inQuote = !inQuote;
                        break;
                    }
                    case '\\': {
                        ++endIndex;
                        break;
                    }
                    case ';': {
                        if (!inQuote) break block6;
                    }
                }
                ++endIndex;
            }
            if (endIndex > dnChain.length()) {
                throw new IllegalArgumentException("unterminated escape");
            }
            parsed.add(dnChain.substring(startIndex, endIndex));
            startIndex = endIndex + 1;
            startIndex = SecurityAdmin.skipSpaces(dnChain, startIndex);
        }
        return parsed;
    }

    private static int skipSpaces(String dnChain, int startIndex) {
        while (startIndex < dnChain.length() && dnChain.charAt(startIndex) == ' ') {
            ++startIndex;
        }
        return startIndex;
    }

    /*
     * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    static class MockBundle
    implements Bundle {
        private final Map<X509Certificate, List<X509Certificate>> signers;

        MockBundle(Map<X509Certificate, List<X509Certificate>> signers) {
            this.signers = signers;
        }

        @Override
        public Enumeration<URL> findEntries(String path, String filePattern, boolean recurse) {
            return null;
        }

        @Override
        public BundleContext getBundleContext() {
            return null;
        }

        @Override
        public long getBundleId() {
            return -1L;
        }

        @Override
        public URL getEntry(String path) {
            return null;
        }

        @Override
        public Enumeration<String> getEntryPaths(String path) {
            return null;
        }

        @Override
        public Dictionary<String, String> getHeaders() {
            return new Hashtable<String, String>();
        }

        @Override
        public Dictionary<String, String> getHeaders(String locale) {
            return this.getHeaders();
        }

        @Override
        public long getLastModified() {
            return 0L;
        }

        @Override
        public String getLocation() {
            return "";
        }

        @Override
        public ServiceReference<?>[] getRegisteredServices() {
            return null;
        }

        @Override
        public URL getResource(String name) {
            return null;
        }

        @Override
        public Enumeration<URL> getResources(String name) throws IOException {
            return null;
        }

        @Override
        public ServiceReference<?>[] getServicesInUse() {
            return null;
        }

        @Override
        public Map<X509Certificate, List<X509Certificate>> getSignerCertificates(int signersType) {
            return new HashMap<X509Certificate, List<X509Certificate>>(this.signers);
        }

        @Override
        public int getState() {
            return 1;
        }

        @Override
        public String getSymbolicName() {
            return null;
        }

        @Override
        public Version getVersion() {
            return Version.emptyVersion;
        }

        @Override
        public boolean hasPermission(Object permission) {
            return false;
        }

        @Override
        public Class<?> loadClass(String name) throws ClassNotFoundException {
            throw new IllegalStateException();
        }

        @Override
        public void start(int options) throws BundleException {
            throw new IllegalStateException();
        }

        @Override
        public void start() throws BundleException {
            throw new IllegalStateException();
        }

        @Override
        public void stop(int options) throws BundleException {
            throw new IllegalStateException();
        }

        @Override
        public void stop() throws BundleException {
            throw new IllegalStateException();
        }

        @Override
        public void uninstall() throws BundleException {
            throw new IllegalStateException();
        }

        @Override
        public void update() throws BundleException {
            throw new IllegalStateException();
        }

        @Override
        public void update(InputStream in) throws BundleException {
            throw new IllegalStateException();
        }

        @Override
        public int compareTo(Bundle o) {
            return 0;
        }

        @Override
        public <A> A adapt(Class<A> type) {
            throw new IllegalStateException();
        }

        @Override
        public File getDataFile(String filename) {
            return null;
        }
    }

    private static class MockPrincipal
    implements Principal {
        private final String name;

        MockPrincipal(String name) {
            this.name = name;
        }

        public String getName() {
            return this.name;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof MockPrincipal) {
                return this.name.equals(((MockPrincipal)obj).name);
            }
            return false;
        }

        public int hashCode() {
            return this.name.hashCode();
        }

        public String toString() {
            return this.getName();
        }
    }

    /*
     * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private static class MockX509Certificate
    extends X509Certificate {
        private final Principal subject;
        private final Principal issuer;

        MockX509Certificate(Principal subject, Principal issuer) {
            this.subject = subject;
            this.issuer = issuer;
        }

        @Override
        public Principal getSubjectDN() {
            return this.subject;
        }

        @Override
        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof MockX509Certificate) {
                return this.subject.equals(((MockX509Certificate)obj).subject) && this.issuer.equals(((MockX509Certificate)obj).issuer);
            }
            return false;
        }

        @Override
        public int hashCode() {
            return this.subject.hashCode() + this.issuer.hashCode();
        }

        @Override
        public String toString() {
            return this.subject.toString();
        }

        @Override
        public void checkValidity() throws CertificateExpiredException, CertificateNotYetValidException {
            throw new UnsupportedOperationException();
        }

        @Override
        public void checkValidity(Date var0) throws CertificateExpiredException, CertificateNotYetValidException {
            throw new UnsupportedOperationException();
        }

        @Override
        public int getBasicConstraints() {
            throw new UnsupportedOperationException();
        }

        @Override
        public Principal getIssuerDN() {
            return this.issuer;
        }

        @Override
        public boolean[] getIssuerUniqueID() {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean[] getKeyUsage() {
            throw new UnsupportedOperationException();
        }

        @Override
        public Date getNotAfter() {
            throw new UnsupportedOperationException();
        }

        @Override
        public Date getNotBefore() {
            throw new UnsupportedOperationException();
        }

        @Override
        public BigInteger getSerialNumber() {
            throw new UnsupportedOperationException();
        }

        @Override
        public String getSigAlgName() {
            throw new UnsupportedOperationException();
        }

        @Override
        public String getSigAlgOID() {
            throw new UnsupportedOperationException();
        }

        @Override
        public byte[] getSigAlgParams() {
            throw new UnsupportedOperationException();
        }

        @Override
        public byte[] getSignature() {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean[] getSubjectUniqueID() {
            throw new UnsupportedOperationException();
        }

        @Override
        public byte[] getTBSCertificate() throws CertificateEncodingException {
            throw new UnsupportedOperationException();
        }

        @Override
        public int getVersion() {
            throw new UnsupportedOperationException();
        }

        @Override
        public byte[] getEncoded() throws CertificateEncodingException {
            throw new UnsupportedOperationException();
        }

        @Override
        public PublicKey getPublicKey() {
            throw new UnsupportedOperationException();
        }

        @Override
        public void verify(PublicKey var0) throws InvalidKeyException, NoSuchAlgorithmException, NoSuchProviderException, SignatureException, CertificateException {
            throw new UnsupportedOperationException();
        }

        @Override
        public void verify(PublicKey var0, String var1) throws InvalidKeyException, NoSuchAlgorithmException, NoSuchProviderException, SignatureException, CertificateException {
            throw new UnsupportedOperationException();
        }

        @Override
        public Set<String> getCriticalExtensionOIDs() {
            throw new UnsupportedOperationException();
        }

        @Override
        public byte[] getExtensionValue(String var0) {
            throw new UnsupportedOperationException();
        }

        @Override
        public Set<String> getNonCriticalExtensionOIDs() {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean hasUnsupportedCriticalExtension() {
            throw new UnsupportedOperationException();
        }
    }
}

