/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.Path
 */
package org.eclipse.core.internal.resources;

import java.io.DataInputStream;
import java.io.EOFException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.eclipse.core.internal.resources.IMarkerSetElement;
import org.eclipse.core.internal.resources.MarkerAttributeMap;
import org.eclipse.core.internal.resources.MarkerDelta;
import org.eclipse.core.internal.resources.MarkerInfo;
import org.eclipse.core.internal.resources.MarkerReader;
import org.eclipse.core.internal.resources.MarkerSet;
import org.eclipse.core.internal.resources.Resource;
import org.eclipse.core.internal.resources.ResourceException;
import org.eclipse.core.internal.resources.ResourceInfo;
import org.eclipse.core.internal.resources.Workspace;
import org.eclipse.core.internal.utils.Messages;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class MarkerReader_2
extends MarkerReader {
    public static final byte INDEX = 1;
    public static final byte QNAME = 2;
    public static final byte ATTRIBUTE_NULL = 0;
    public static final byte ATTRIBUTE_BOOLEAN = 1;
    public static final byte ATTRIBUTE_INTEGER = 2;
    public static final byte ATTRIBUTE_STRING = 3;

    public MarkerReader_2(Workspace workspace) {
        super(workspace);
    }

    @Override
    public void read(DataInputStream input, boolean generateDeltas) throws IOException, CoreException {
        try {
            ArrayList<String> readTypes = new ArrayList<String>(5);
            while (true) {
                Path path = new Path(input.readUTF());
                int markersSize = input.readInt();
                MarkerSet markers = new MarkerSet(markersSize);
                int i = 0;
                while (i < markersSize) {
                    markers.add(this.readMarkerInfo(input, readTypes));
                    ++i;
                }
                ResourceInfo info = this.workspace.getResourceInfo((IPath)path, false, false);
                if (info == null) continue;
                info.setMarkers(markers);
                if (!generateDeltas) continue;
                Resource resource = this.workspace.newResource((IPath)path, info.getType());
                IMarkerSetElement[] infos = markers.elements;
                ArrayList<MarkerDelta> deltas = new ArrayList<MarkerDelta>(infos.length);
                int i2 = 0;
                while (i2 < infos.length) {
                    if (infos[i2] != null) {
                        deltas.add(new MarkerDelta(1, resource, (MarkerInfo)infos[i2]));
                    }
                    ++i2;
                }
                this.workspace.getMarkerManager().changedMarkers(resource, deltas.toArray(new IMarkerSetElement[deltas.size()]));
            }
        }
        catch (EOFException eOFException) {
            return;
        }
    }

    private Map<String, Object> readAttributes(DataInputStream input) throws IOException {
        int attributesSize = input.readShort();
        if (attributesSize == 0) {
            return null;
        }
        MarkerAttributeMap<Object> result = new MarkerAttributeMap<Object>(attributesSize);
        int j = 0;
        while (j < attributesSize) {
            String key = input.readUTF();
            byte type = input.readByte();
            Object value = null;
            switch (type) {
                case 2: {
                    value = new Integer(input.readInt());
                    break;
                }
                case 1: {
                    value = input.readBoolean() ? Boolean.TRUE : Boolean.FALSE;
                    break;
                }
                case 3: {
                    value = input.readUTF();
                    break;
                }
            }
            if (value != null) {
                result.put(key, value);
            }
            ++j;
        }
        return result.isEmpty() ? null : result;
    }

    private MarkerInfo readMarkerInfo(DataInputStream input, List<String> readTypes) throws IOException, CoreException {
        MarkerInfo info = new MarkerInfo();
        info.setId(input.readLong());
        byte constant = input.readByte();
        switch (constant) {
            case 2: {
                String type = input.readUTF();
                info.setType(type);
                readTypes.add(type);
                break;
            }
            case 1: {
                info.setType(readTypes.get(input.readInt()));
                break;
            }
            default: {
                String msg = Messages.resources_readMarkers;
                throw new ResourceException(567, null, msg, null);
            }
        }
        info.internalSetAttributes(this.readAttributes(input));
        return info;
    }
}

