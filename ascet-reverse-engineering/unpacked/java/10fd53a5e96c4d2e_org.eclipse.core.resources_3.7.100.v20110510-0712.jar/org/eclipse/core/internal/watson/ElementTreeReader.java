/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.Path
 */
package org.eclipse.core.internal.watson;

import java.io.DataInput;
import java.io.DataOutput;
import java.io.IOException;
import org.eclipse.core.internal.dtree.DataTreeReader;
import org.eclipse.core.internal.dtree.IDataFlattener;
import org.eclipse.core.internal.utils.Messages;
import org.eclipse.core.internal.watson.ElementTree;
import org.eclipse.core.internal.watson.ElementTreeReaderImpl_1;
import org.eclipse.core.internal.watson.IElementInfoFlattener;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;

public class ElementTreeReader {
    protected IElementInfoFlattener elementInfoFlattener;
    protected DataTreeReader dataTreeReader;

    public ElementTreeReader(final IElementInfoFlattener factory) {
        Assert.isNotNull((Object)factory);
        this.elementInfoFlattener = factory;
        IDataFlattener f = new IDataFlattener(){

            public void writeData(IPath path, Object data, DataOutput output) {
            }

            public Object readData(IPath path, DataInput input) throws IOException {
                if (!Path.ROOT.equals((Object)path)) {
                    return factory.readElement(path, input);
                }
                return null;
            }
        };
        this.dataTreeReader = new DataTreeReader(f);
    }

    public ElementTreeReader getReader(int formatVersion) throws IOException {
        if (formatVersion == 1) {
            return new ElementTreeReaderImpl_1(this.elementInfoFlattener);
        }
        throw new IOException(Messages.watson_unknown);
    }

    public ElementTree readDelta(ElementTree completeTree, DataInput input) throws IOException {
        ElementTreeReader realReader = this.getReader(ElementTreeReader.readNumber(input));
        return realReader.readDelta(completeTree, input);
    }

    public ElementTree[] readDeltaChain(DataInput input) throws IOException {
        return this.readDeltaChain(input, "");
    }

    public ElementTree[] readDeltaChain(DataInput input, String newProjectName) throws IOException {
        ElementTreeReader realReader = this.getReader(ElementTreeReader.readNumber(input));
        return realReader.readDeltaChain(input, newProjectName);
    }

    protected static int readNumber(DataInput input) throws IOException {
        byte b = input.readByte();
        int number = b & 0xFF;
        if (number == 255) {
            number = input.readInt();
        }
        return number;
    }

    public ElementTree readTree(DataInput input) throws IOException {
        return this.readTree(input, "");
    }

    public ElementTree readTree(DataInput input, String newProjectName) throws IOException {
        ElementTreeReader realReader = this.getReader(ElementTreeReader.readNumber(input));
        return realReader.readTree(input, newProjectName);
    }
}

