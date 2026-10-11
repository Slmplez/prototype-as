/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IAdaptable
 *  org.eclipse.swt.dnd.ByteArrayTransfer
 *  org.eclipse.swt.dnd.TransferData
 */
package org.eclipse.ui.part;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.StringReader;
import java.io.StringWriter;
import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.swt.dnd.ByteArrayTransfer;
import org.eclipse.swt.dnd.TransferData;
import org.eclipse.ui.IEditorInput;
import org.eclipse.ui.IElementFactory;
import org.eclipse.ui.IPersistableElement;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.WorkbenchException;
import org.eclipse.ui.XMLMemento;

public class EditorInputTransfer
extends ByteArrayTransfer {
    private static final EditorInputTransfer instance = new EditorInputTransfer();
    private static final String TYPE_NAME = "editor-input-transfer-format:" + System.currentTimeMillis() + ":" + ((Object)((Object)instance)).hashCode();
    private static final int TYPEID = EditorInputTransfer.registerType((String)TYPE_NAME);

    private EditorInputTransfer() {
    }

    public static EditorInputTransfer getInstance() {
        return instance;
    }

    protected int[] getTypeIds() {
        return new int[]{TYPEID};
    }

    protected String[] getTypeNames() {
        return new String[]{TYPE_NAME};
    }

    public void javaToNative(Object data, TransferData transferData) {
        if (!(data instanceof EditorInputData[])) {
            return;
        }
        EditorInputData[] editorInputs = (EditorInputData[])data;
        int editorInputCount = editorInputs.length;
        try {
            ByteArrayOutputStream out = new ByteArrayOutputStream();
            DataOutputStream dataOut = new DataOutputStream(out);
            dataOut.writeInt(editorInputCount);
            int i = 0;
            while (i < editorInputs.length) {
                this.writeEditorInput(dataOut, editorInputs[i]);
                ++i;
            }
            dataOut.close();
            out.close();
            byte[] bytes = out.toByteArray();
            super.javaToNative((Object)bytes, transferData);
        }
        catch (IOException iOException) {}
    }

    public Object nativeToJava(TransferData transferData) {
        byte[] bytes = (byte[])super.nativeToJava(transferData);
        if (bytes == null) {
            return null;
        }
        DataInputStream in = new DataInputStream(new ByteArrayInputStream(bytes));
        try {
            int count = in.readInt();
            EditorInputData[] results = new EditorInputData[count];
            int i = 0;
            while (i < count) {
                results[i] = this.readEditorInput(in);
                ++i;
            }
            return results;
        }
        catch (IOException iOException) {
            return null;
        }
        catch (WorkbenchException workbenchException) {
            return null;
        }
    }

    private EditorInputData readEditorInput(DataInputStream dataIn) throws IOException, WorkbenchException {
        IAdaptable adaptable;
        String editorId = dataIn.readUTF();
        String factoryId = dataIn.readUTF();
        String xmlString = dataIn.readUTF();
        if (xmlString == null || xmlString.length() == 0) {
            return null;
        }
        StringReader reader = new StringReader(xmlString);
        XMLMemento memento = XMLMemento.createReadRoot(reader);
        IElementFactory factory = PlatformUI.getWorkbench().getElementFactory(factoryId);
        if (factory != null && (adaptable = factory.createElement(memento)) != null && adaptable instanceof IEditorInput) {
            return new EditorInputData(editorId, (IEditorInput)adaptable);
        }
        return null;
    }

    private void writeEditorInput(DataOutputStream dataOut, EditorInputData editorInputData) throws IOException {
        dataOut.writeUTF(editorInputData.editorId);
        if (editorInputData.input != null) {
            XMLMemento memento = XMLMemento.createWriteRoot("IEditorInput");
            IPersistableElement element = editorInputData.input.getPersistable();
            if (element != null) {
                element.saveState(memento);
                StringWriter writer = new StringWriter();
                memento.save(writer);
                writer.close();
                dataOut.writeUTF(element.getFactoryId());
                dataOut.writeUTF(writer.toString());
            }
        }
    }

    public static EditorInputData createEditorInputData(String editorId, IEditorInput input) {
        return new EditorInputData(editorId, input);
    }

    public static class EditorInputData {
        public String editorId;
        public IEditorInput input;

        private EditorInputData(String editorId, IEditorInput input) {
            this.editorId = editorId;
            this.input = input;
        }
    }
}

