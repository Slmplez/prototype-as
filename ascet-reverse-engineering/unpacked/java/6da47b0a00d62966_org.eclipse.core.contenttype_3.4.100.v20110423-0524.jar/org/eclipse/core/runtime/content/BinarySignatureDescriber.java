/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExecutableExtension
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.QualifiedName
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.core.runtime.content;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Hashtable;
import java.util.StringTokenizer;
import org.eclipse.core.internal.content.ContentMessages;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExecutableExtension;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.QualifiedName;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.content.IContentDescriber;
import org.eclipse.core.runtime.content.IContentDescription;
import org.eclipse.osgi.util.NLS;

public final class BinarySignatureDescriber
implements IContentDescriber,
IExecutableExtension {
    private static final String SIGNATURE = "signature";
    private static final String OFFSET = "offset";
    private static final Object REQUIRED = "required";
    private byte[] signature;
    private int offset;
    private boolean required = true;
    static /* synthetic */ Class class$0;

    public int describe(InputStream contents, IContentDescription description) throws IOException {
        int notValid;
        byte[] buffer = new byte[this.signature.length];
        int n = notValid = this.required ? 0 : 1;
        if (contents.skip(this.offset) < (long)this.offset) {
            return notValid;
        }
        if (contents.read(buffer) != buffer.length) {
            return notValid;
        }
        int i = 0;
        while (i < this.signature.length) {
            if (this.signature[i] != buffer[i]) {
                return notValid;
            }
            ++i;
        }
        return 2;
    }

    public QualifiedName[] getSupportedOptions() {
        return new QualifiedName[0];
    }

    public void setInitializationData(IConfigurationElement config, String propertyName, Object data) throws CoreException {
        block12: {
            try {
                if (data instanceof String) {
                    this.signature = BinarySignatureDescriber.parseSignature((String)data);
                    break block12;
                }
                if (!(data instanceof Hashtable)) break block12;
                Hashtable parameters = (Hashtable)data;
                if (!parameters.containsKey(SIGNATURE)) {
                    Class<?> clazz = class$0;
                    if (clazz == null) {
                        try {
                            clazz = class$0 = Class.forName("org.eclipse.core.runtime.content.BinarySignatureDescriber");
                        }
                        catch (ClassNotFoundException classNotFoundException) {
                            throw new NoClassDefFoundError(classNotFoundException.getMessage());
                        }
                    }
                    String message = NLS.bind((String)ContentMessages.content_badInitializationData, (Object)clazz.getName());
                    throw new CoreException((IStatus)new Status(4, "org.eclipse.core.contenttype", 0, message, null));
                }
                this.signature = BinarySignatureDescriber.parseSignature((String)parameters.get(SIGNATURE));
                if (parameters.containsKey(OFFSET)) {
                    this.offset = Integer.parseInt((String)parameters.get(OFFSET));
                }
                if (parameters.containsKey(REQUIRED)) {
                    this.required = Boolean.valueOf((String)parameters.get(REQUIRED));
                }
            }
            catch (NumberFormatException nfe) {
                Class<?> clazz = class$0;
                if (clazz == null) {
                    try {
                        clazz = class$0 = Class.forName("org.eclipse.core.runtime.content.BinarySignatureDescriber");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                String message = NLS.bind((String)ContentMessages.content_badInitializationData, (Object)clazz.getName());
                throw new CoreException((IStatus)new Status(4, "org.eclipse.core.contenttype", 0, message, (Throwable)nfe));
            }
        }
    }

    private static byte[] parseSignature(String data) {
        ArrayList<Byte> bytes = new ArrayList<Byte>();
        StringTokenizer tokenizer = new StringTokenizer(data, " \t\n\r\f,");
        while (tokenizer.hasMoreTokens()) {
            bytes.add(new Byte((byte)Integer.parseInt(tokenizer.nextToken().trim(), 16)));
        }
        byte[] signature = new byte[bytes.size()];
        int i = 0;
        while (i < signature.length) {
            signature[i] = (Byte)bytes.get(i);
            ++i;
        }
        return signature;
    }
}

