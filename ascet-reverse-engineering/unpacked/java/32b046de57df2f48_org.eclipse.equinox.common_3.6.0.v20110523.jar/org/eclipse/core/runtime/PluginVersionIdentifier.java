/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.util.NLS
 *  org.osgi.framework.Version
 */
package org.eclipse.core.runtime;

import java.util.StringTokenizer;
import java.util.Vector;
import org.eclipse.core.internal.runtime.CommonMessages;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.osgi.util.NLS;
import org.osgi.framework.Version;

public final class PluginVersionIdentifier {
    private Version version;
    private static final String SEPARATOR = ".";

    public PluginVersionIdentifier(int major, int minor, int service) {
        this(major, minor, service, null);
    }

    public PluginVersionIdentifier(int major, int minor, int service, String qualifier) {
        if (major < 0) {
            Assert.isTrue(false, NLS.bind((String)CommonMessages.parse_postiveMajor, (Object)(String.valueOf(major) + SEPARATOR + minor + SEPARATOR + service + SEPARATOR + qualifier)));
        }
        if (minor < 0) {
            Assert.isTrue(false, NLS.bind((String)CommonMessages.parse_postiveMinor, (Object)(String.valueOf(major) + SEPARATOR + minor + SEPARATOR + service + SEPARATOR + qualifier)));
        }
        if (service < 0) {
            Assert.isTrue(false, NLS.bind((String)CommonMessages.parse_postiveService, (Object)(String.valueOf(major) + SEPARATOR + minor + SEPARATOR + service + SEPARATOR + qualifier)));
        }
        this.version = new Version(major, minor, service, qualifier);
    }

    public PluginVersionIdentifier(String versionId) {
        Object[] parts = PluginVersionIdentifier.parseVersion(versionId);
        this.version = new Version(((Integer)parts[0]).intValue(), ((Integer)parts[1]).intValue(), ((Integer)parts[2]).intValue(), (String)parts[3]);
    }

    public static IStatus validateVersion(String version) {
        try {
            PluginVersionIdentifier.parseVersion(version);
        }
        catch (RuntimeException e) {
            return new Status(4, "org.eclipse.core.runtime", 4, e.getMessage(), e);
        }
        return Status.OK_STATUS;
    }

    private static Object[] parseVersion(String versionId) {
        String s;
        if (versionId == null) {
            Assert.isNotNull(null, CommonMessages.parse_emptyPluginVersion);
        }
        if ((s = versionId.trim()).equals("")) {
            Assert.isTrue(false, CommonMessages.parse_emptyPluginVersion);
        }
        if (s.startsWith(SEPARATOR)) {
            Assert.isTrue(false, NLS.bind((String)CommonMessages.parse_separatorStartVersion, (Object)s));
        }
        if (s.endsWith(SEPARATOR)) {
            Assert.isTrue(false, NLS.bind((String)CommonMessages.parse_separatorEndVersion, (Object)s));
        }
        if (s.indexOf("..") != -1) {
            Assert.isTrue(false, NLS.bind((String)CommonMessages.parse_doubleSeparatorVersion, (Object)s));
        }
        StringTokenizer st = new StringTokenizer(s, SEPARATOR);
        Vector<String> elements = new Vector<String>(4);
        while (st.hasMoreTokens()) {
            elements.addElement(st.nextToken());
        }
        int elementSize = elements.size();
        if (elementSize <= 0) {
            Assert.isTrue(false, NLS.bind((String)CommonMessages.parse_oneElementPluginVersion, (Object)s));
        }
        if (elementSize > 4) {
            Assert.isTrue(false, NLS.bind((String)CommonMessages.parse_fourElementPluginVersion, (Object)s));
        }
        int[] numbers = new int[3];
        try {
            numbers[0] = Integer.parseInt((String)elements.elementAt(0));
            if (numbers[0] < 0) {
                Assert.isTrue(false, NLS.bind((String)CommonMessages.parse_postiveMajor, (Object)s));
            }
        }
        catch (NumberFormatException numberFormatException) {
            Assert.isTrue(false, NLS.bind((String)CommonMessages.parse_numericMajorComponent, (Object)s));
        }
        try {
            if (elementSize >= 2) {
                numbers[1] = Integer.parseInt((String)elements.elementAt(1));
                if (numbers[1] < 0) {
                    Assert.isTrue(false, NLS.bind((String)CommonMessages.parse_postiveMinor, (Object)s));
                }
            } else {
                numbers[1] = 0;
            }
        }
        catch (NumberFormatException numberFormatException) {
            Assert.isTrue(false, NLS.bind((String)CommonMessages.parse_numericMinorComponent, (Object)s));
        }
        try {
            if (elementSize >= 3) {
                numbers[2] = Integer.parseInt((String)elements.elementAt(2));
                if (numbers[2] < 0) {
                    Assert.isTrue(false, NLS.bind((String)CommonMessages.parse_postiveService, (Object)s));
                }
            } else {
                numbers[2] = 0;
            }
        }
        catch (NumberFormatException numberFormatException) {
            Assert.isTrue(false, NLS.bind((String)CommonMessages.parse_numericServiceComponent, (Object)s));
        }
        Object[] result = new Object[]{new Integer(numbers[0]), new Integer(numbers[1]), new Integer(numbers[2]), elementSize >= 4 ? (String)elements.elementAt(3) : ""};
        return result;
    }

    public boolean equals(Object object) {
        if (!(object instanceof PluginVersionIdentifier)) {
            return false;
        }
        PluginVersionIdentifier v = (PluginVersionIdentifier)object;
        return this.version.equals((Object)v.version);
    }

    public int hashCode() {
        return this.version.hashCode();
    }

    public int getMajorComponent() {
        return this.version.getMajor();
    }

    public int getMinorComponent() {
        return this.version.getMinor();
    }

    public int getServiceComponent() {
        return this.version.getMicro();
    }

    public String getQualifierComponent() {
        return this.version.getQualifier();
    }

    public boolean isGreaterOrEqualTo(PluginVersionIdentifier id) {
        if (id == null) {
            return false;
        }
        if (this.getMajorComponent() > id.getMajorComponent()) {
            return true;
        }
        if (this.getMajorComponent() == id.getMajorComponent() && this.getMinorComponent() > id.getMinorComponent()) {
            return true;
        }
        if (this.getMajorComponent() == id.getMajorComponent() && this.getMinorComponent() == id.getMinorComponent() && this.getServiceComponent() > id.getServiceComponent()) {
            return true;
        }
        return this.getMajorComponent() == id.getMajorComponent() && this.getMinorComponent() == id.getMinorComponent() && this.getServiceComponent() == id.getServiceComponent() && this.getQualifierComponent().compareTo(id.getQualifierComponent()) >= 0;
    }

    public boolean isCompatibleWith(PluginVersionIdentifier id) {
        if (id == null) {
            return false;
        }
        if (this.getMajorComponent() != id.getMajorComponent()) {
            return false;
        }
        if (this.getMinorComponent() > id.getMinorComponent()) {
            return true;
        }
        if (this.getMinorComponent() < id.getMinorComponent()) {
            return false;
        }
        if (this.getServiceComponent() > id.getServiceComponent()) {
            return true;
        }
        if (this.getServiceComponent() < id.getServiceComponent()) {
            return false;
        }
        return this.getQualifierComponent().compareTo(id.getQualifierComponent()) >= 0;
    }

    public boolean isEquivalentTo(PluginVersionIdentifier id) {
        if (id == null) {
            return false;
        }
        if (this.getMajorComponent() != id.getMajorComponent()) {
            return false;
        }
        if (this.getMinorComponent() != id.getMinorComponent()) {
            return false;
        }
        if (this.getServiceComponent() > id.getServiceComponent()) {
            return true;
        }
        if (this.getServiceComponent() < id.getServiceComponent()) {
            return false;
        }
        return this.getQualifierComponent().compareTo(id.getQualifierComponent()) >= 0;
    }

    public boolean isPerfect(PluginVersionIdentifier id) {
        if (id == null) {
            return false;
        }
        return this.getMajorComponent() == id.getMajorComponent() && this.getMinorComponent() == id.getMinorComponent() && this.getServiceComponent() == id.getServiceComponent() && this.getQualifierComponent().equals(id.getQualifierComponent());
    }

    public boolean isGreaterThan(PluginVersionIdentifier id) {
        if (id == null) {
            return this.getMajorComponent() != 0 || this.getMinorComponent() != 0 || this.getServiceComponent() != 0 || !this.getQualifierComponent().equals("");
        }
        if (this.getMajorComponent() > id.getMajorComponent()) {
            return true;
        }
        if (this.getMajorComponent() < id.getMajorComponent()) {
            return false;
        }
        if (this.getMinorComponent() > id.getMinorComponent()) {
            return true;
        }
        if (this.getMinorComponent() < id.getMinorComponent()) {
            return false;
        }
        if (this.getServiceComponent() > id.getServiceComponent()) {
            return true;
        }
        if (this.getServiceComponent() < id.getServiceComponent()) {
            return false;
        }
        return this.getQualifierComponent().compareTo(id.getQualifierComponent()) > 0;
    }

    public String toString() {
        return this.version.toString();
    }
}

