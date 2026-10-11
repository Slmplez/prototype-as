/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.QualifiedName
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.core.internal.properties;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import org.eclipse.core.internal.localstore.Bucket;
import org.eclipse.core.internal.resources.ResourceException;
import org.eclipse.core.internal.utils.Messages;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.QualifiedName;
import org.eclipse.osgi.util.NLS;

public class PropertyBucket
extends Bucket {
    public static final byte INDEX = 1;
    public static final byte QNAME = 2;
    private static final byte VERSION = 1;
    private final List<String> qualifierIndex = new ArrayList<String>();

    protected Bucket.Entry createEntry(IPath path, Object value) {
        return new PropertyEntry(path, (String[][])value);
    }

    private PropertyEntry getEntry(IPath path) {
        String pathAsString = path.toString();
        String[][] existing = (String[][])this.getEntryValue(pathAsString);
        if (existing == null) {
            return null;
        }
        return new PropertyEntry(path, existing);
    }

    protected String getIndexFileName() {
        return "properties.index";
    }

    public String getProperty(IPath path, QualifiedName name) {
        PropertyEntry entry = this.getEntry(path);
        if (entry == null) {
            return null;
        }
        return entry.getProperty(name);
    }

    protected byte getVersion() {
        return 1;
    }

    protected String getVersionFileName() {
        return "properties.version";
    }

    public void load(String newProjectName, File baseLocation, boolean force) throws CoreException {
        this.qualifierIndex.clear();
        super.load(newProjectName, baseLocation, force);
    }

    protected Object readEntryValue(DataInputStream source) throws IOException, CoreException {
        int length = source.readUnsignedShort();
        String[][] properties = new String[length][3];
        int j = 0;
        while (j < properties.length) {
            byte constant = source.readByte();
            switch (constant) {
                case 2: {
                    properties[j][0] = source.readUTF();
                    this.qualifierIndex.add(properties[j][0]);
                    break;
                }
                case 1: {
                    properties[j][0] = this.qualifierIndex.get(source.readInt());
                    break;
                }
                default: {
                    Path resourcePath = this.projectName == null ? Path.ROOT : Path.ROOT.append(this.projectName);
                    String msg = NLS.bind((String)Messages.properties_readProperties, (Object)resourcePath.toString());
                    throw new ResourceException(567, null, msg, null);
                }
            }
            properties[j][1] = source.readUTF();
            properties[j][2] = source.readUTF();
            ++j;
        }
        return properties;
    }

    public void save() throws CoreException {
        this.qualifierIndex.clear();
        super.save();
    }

    public void setProperties(PropertyEntry entry) {
        IPath path = entry.getPath();
        String[][] additions = (String[][])entry.getValue();
        String pathAsString = path.toString();
        String[][] existing = (String[][])this.getEntryValue(pathAsString);
        if (existing == null) {
            this.setEntryValue(pathAsString, additions);
            return;
        }
        this.setEntryValue(pathAsString, PropertyEntry.merge(existing, additions));
    }

    public void setProperty(IPath path, QualifiedName name, String value) {
        String pathAsString = path.toString();
        String[][] existing = (String[][])this.getEntryValue(pathAsString);
        if (existing == null) {
            if (value != null) {
                this.setEntryValue(pathAsString, new String[][]{{name.getQualifier(), name.getLocalName(), value}});
            }
            return;
        }
        String[][] newValue = value != null ? PropertyEntry.insert(existing, name, value) : PropertyEntry.delete(existing, name);
        this.setEntryValue(pathAsString, newValue);
    }

    protected void writeEntryValue(DataOutputStream destination, Object entryValue) throws IOException {
        String[][] properties = (String[][])entryValue;
        destination.writeShort(properties.length);
        int j = 0;
        while (j < properties.length) {
            int index = this.qualifierIndex.indexOf(properties[j][0]);
            if (index == -1) {
                destination.writeByte(2);
                destination.writeUTF(properties[j][0]);
                this.qualifierIndex.add(properties[j][0]);
            } else {
                destination.writeByte(1);
                destination.writeInt(index);
            }
            destination.writeUTF(properties[j][1]);
            destination.writeUTF(properties[j][2]);
            ++j;
        }
    }

    public static class PropertyEntry
    extends Bucket.Entry {
        private static final Comparator<String[]> COMPARATOR = new Comparator<String[]>(){

            @Override
            public int compare(String[] o1, String[] o2) {
                int qualifierComparison = o1[0].compareTo(o2[0]);
                return qualifierComparison != 0 ? qualifierComparison : o1[1].compareTo(o2[1]);
            }
        };
        private static final String[][] EMPTY_DATA = new String[0][];
        private String[][] value;

        static String[][] delete(String[][] existing, QualifiedName propertyName) {
            if (existing.length == 1) {
                return existing[0][0].equals(propertyName.getQualifier()) && existing[0][1].equals(propertyName.getLocalName()) ? null : existing;
            }
            int deletePosition = PropertyEntry.search(existing, propertyName);
            if (deletePosition < 0) {
                return existing;
            }
            String[][] newValue = new String[existing.length - 1][];
            if (deletePosition > 0) {
                System.arraycopy(existing, 0, newValue, 0, deletePosition);
            }
            if (deletePosition < existing.length - 1) {
                System.arraycopy(existing, deletePosition + 1, newValue, deletePosition, newValue.length - deletePosition);
            }
            return newValue;
        }

        static String[][] insert(String[][] existing, QualifiedName propertyName, String propertyValue) {
            int index = PropertyEntry.search(existing, propertyName);
            if (index >= 0) {
                existing[index][2] = propertyValue;
                return existing;
            }
            int insertPosition = -index - 1;
            String[][] newValue = new String[existing.length + 1][];
            if (insertPosition > 0) {
                System.arraycopy(existing, 0, newValue, 0, insertPosition);
            }
            newValue[insertPosition] = new String[]{propertyName.getQualifier(), propertyName.getLocalName(), propertyValue};
            if (insertPosition < existing.length) {
                System.arraycopy(existing, insertPosition, newValue, insertPosition + 1, existing.length - insertPosition);
            }
            return newValue;
        }

        static Object merge(String[][] base, String[][] additions) {
            int additionPointer = 0;
            int basePointer = 0;
            int added = 0;
            String[][] result = new String[base.length + additions.length][];
            while (basePointer < base.length && additionPointer < additions.length) {
                int comparison = COMPARATOR.compare(base[basePointer], additions[additionPointer]);
                if (comparison == 0) {
                    result[added++] = additions[additionPointer++];
                    ++basePointer;
                    continue;
                }
                result[added++] = comparison < 0 ? base[basePointer++] : additions[additionPointer++];
            }
            String[][] remaining = basePointer == base.length ? additions : base;
            int remainingPointer = basePointer == base.length ? additionPointer : basePointer;
            int remainingCount = remaining.length - remainingPointer;
            System.arraycopy(remaining, remainingPointer, result, added, remainingCount);
            if ((added += remainingCount) == base.length + additions.length) {
                return result;
            }
            String[][] finalResult = new String[added][];
            System.arraycopy(result, 0, finalResult, 0, finalResult.length);
            return finalResult;
        }

        private static int search(String[][] existing, QualifiedName propertyName) {
            String[] stringArray = new String[3];
            stringArray[0] = propertyName.getQualifier();
            stringArray[1] = propertyName.getLocalName();
            return Arrays.binarySearch(existing, stringArray, COMPARATOR);
        }

        public PropertyEntry(IPath path, PropertyEntry base) {
            super(path);
            int xLen = base.value.length;
            this.value = new String[xLen][];
            int i = 0;
            while (i < xLen) {
                int yLen = base.value[i].length;
                this.value[i] = new String[yLen];
                System.arraycopy(base.value[i], 0, this.value[i], 0, yLen);
                ++i;
            }
        }

        protected PropertyEntry(IPath path, String[][] value) {
            super(path);
            this.value = value;
        }

        private void compact() {
            if (!this.isDirty()) {
                return;
            }
            int occurrences = 0;
            int i = 0;
            while (i < this.value.length) {
                if (this.value[i] != null) {
                    this.value[occurrences++] = this.value[i];
                }
                ++i;
            }
            if (occurrences == this.value.length) {
                return;
            }
            if (occurrences == 0) {
                this.value = EMPTY_DATA;
                this.delete();
                return;
            }
            String[][] result = new String[occurrences][];
            System.arraycopy(this.value, 0, result, 0, occurrences);
            this.value = result;
        }

        public int getOccurrences() {
            return this.value == null ? 0 : this.value.length;
        }

        public String getProperty(QualifiedName name) {
            int index = PropertyEntry.search(this.value, name);
            return index < 0 ? null : this.value[index][2];
        }

        public QualifiedName getPropertyName(int i) {
            return new QualifiedName(this.value[i][0], this.value[i][1]);
        }

        public String getPropertyValue(int i) {
            return this.value[i][2];
        }

        public Object getValue() {
            return this.value;
        }

        public void visited() {
            this.compact();
        }
    }
}

