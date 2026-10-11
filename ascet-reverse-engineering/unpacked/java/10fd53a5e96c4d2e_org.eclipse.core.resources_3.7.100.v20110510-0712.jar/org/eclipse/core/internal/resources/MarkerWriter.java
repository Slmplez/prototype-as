/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.resources;

import java.io.DataOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.eclipse.core.internal.resources.IMarkerSetElement;
import org.eclipse.core.internal.resources.MarkerInfo;
import org.eclipse.core.internal.resources.MarkerManager;
import org.eclipse.core.internal.resources.MarkerSet;
import org.eclipse.core.internal.resources.ResourceInfo;
import org.eclipse.core.internal.watson.IPathRequestor;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class MarkerWriter {
    protected MarkerManager manager;
    public static final int MARKERS_SAVE_VERSION = 3;
    public static final int MARKERS_SNAP_VERSION = 2;
    public static final byte INDEX = 1;
    public static final byte QNAME = 2;
    public static final byte ATTRIBUTE_NULL = 0;
    public static final byte ATTRIBUTE_BOOLEAN = 1;
    public static final byte ATTRIBUTE_INTEGER = 2;
    public static final byte ATTRIBUTE_STRING = 3;

    public MarkerWriter(MarkerManager manager) {
        this.manager = manager;
    }

    private Object[] filterMarkers(IMarkerSetElement[] markers) {
        Object[] result = new Object[2];
        boolean[] isPersistent = new boolean[markers.length];
        int count = 0;
        int i = 0;
        while (i < markers.length) {
            MarkerInfo info = (MarkerInfo)markers[i];
            if (this.manager.isPersistent(info)) {
                isPersistent[i] = true;
                ++count;
            }
            ++i;
        }
        result[0] = new Integer(count);
        result[1] = isPersistent;
        return result;
    }

    public void save(ResourceInfo info, IPathRequestor requestor, DataOutputStream output, List<String> writtenTypes) throws IOException {
        if (info.isSet(8)) {
            return;
        }
        MarkerSet markers = info.getMarkers(false);
        if (markers == null) {
            return;
        }
        IMarkerSetElement[] elements = markers.elements();
        Object[] result = this.filterMarkers(elements);
        int count = (Integer)result[0];
        if (count == 0) {
            return;
        }
        if (output.size() == 0) {
            output.writeInt(3);
        }
        boolean[] isPersistent = (boolean[])result[1];
        output.writeUTF(requestor.requestPath().toString());
        output.writeInt(count);
        int i = 0;
        while (i < elements.length) {
            if (isPersistent[i]) {
                this.write((MarkerInfo)elements[i], output, writtenTypes);
            }
            ++i;
        }
    }

    public void snap(ResourceInfo info, IPathRequestor requestor, DataOutputStream output) throws IOException {
        if (info.isSet(8)) {
            return;
        }
        if (!info.isSet(4096)) {
            return;
        }
        MarkerSet markers = info.getMarkers(false);
        if (markers == null) {
            return;
        }
        IMarkerSetElement[] elements = markers.elements();
        Object[] result = this.filterMarkers(elements);
        int count = (Integer)result[0];
        output.writeInt(2);
        boolean[] isPersistent = (boolean[])result[1];
        output.writeUTF(requestor.requestPath().toString());
        output.writeInt(count);
        ArrayList<String> writtenTypes = new ArrayList<String>();
        int i = 0;
        while (i < elements.length) {
            if (isPersistent[i]) {
                this.write((MarkerInfo)elements[i], output, writtenTypes);
            }
            ++i;
        }
        info.clear(4096);
    }

    private void write(Map<String, Object> attributes, DataOutputStream output) throws IOException {
        output.writeShort(attributes.size());
        for (Map.Entry<String, Object> e : attributes.entrySet()) {
            String key = e.getKey();
            output.writeUTF(key);
            Object value = e.getValue();
            if (value instanceof Integer) {
                output.writeByte(2);
                output.writeInt((Integer)value);
                continue;
            }
            if (value instanceof Boolean) {
                output.writeByte(1);
                output.writeBoolean((Boolean)value);
                continue;
            }
            if (value instanceof String) {
                output.writeByte(3);
                output.writeUTF((String)value);
                continue;
            }
            output.writeByte(0);
        }
    }

    private void write(MarkerInfo info, DataOutputStream output, List<String> writtenTypes) throws IOException {
        output.writeLong(info.getId());
        String type = info.getType();
        int index = writtenTypes.indexOf(type);
        if (index == -1) {
            output.writeByte(2);
            output.writeUTF(type);
            writtenTypes.add(type);
        } else {
            output.writeByte(1);
            output.writeInt(index);
        }
        if (info.getAttributes(false) == null) {
            output.writeShort(0);
        } else {
            this.write(info.getAttributes(false), output);
        }
        output.writeLong(info.getCreationTime());
    }
}

