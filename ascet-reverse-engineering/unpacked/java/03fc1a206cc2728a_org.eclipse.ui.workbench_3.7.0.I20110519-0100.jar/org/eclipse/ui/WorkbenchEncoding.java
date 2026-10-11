/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.ui;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.Platform;
import org.eclipse.osgi.util.NLS;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.registry.RegistryReader;

public class WorkbenchEncoding {
    private static Method CharsetIsSupportedMethod = null;
    static /* synthetic */ Class class$0;

    static {
        try {
            Class<?> charsetClass = Class.forName("java.nio.charset.Charset");
            Class[] classArray = new Class[1];
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("java.lang.String");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            classArray[0] = clazz;
            CharsetIsSupportedMethod = charsetClass.getMethod("isSupported", classArray);
        }
        catch (Exception exception) {}
    }

    public static String getWorkbenchDefaultEncoding() {
        return System.getProperty("file.encoding", "UTF-8");
    }

    public static List getDefinedEncodings() {
        List definedEncodings = Collections.synchronizedList(new ArrayList());
        EncodingsRegistryReader reader = new EncodingsRegistryReader(definedEncodings);
        reader.readRegistry(Platform.getExtensionRegistry(), "org.eclipse.ui", "encodings");
        String[] encodings = new String[definedEncodings.size()];
        ArrayList<String> invalid = new ArrayList<String>();
        definedEncodings.toArray(encodings);
        int i = 0;
        while (i < encodings.length) {
            if (!WorkbenchEncoding.isSupported(encodings[i])) {
                invalid.add(encodings[i]);
            }
            ++i;
        }
        Iterator invalidIterator = invalid.iterator();
        while (invalidIterator.hasNext()) {
            String next = (String)invalidIterator.next();
            WorkbenchPlugin.log(NLS.bind((String)WorkbenchMessages.WorkbenchEncoding_invalidCharset, (Object)next));
            definedEncodings.remove(next);
        }
        return definedEncodings;
    }

    private static boolean isSupported(String encoding) {
        if (CharsetIsSupportedMethod == null) {
            return true;
        }
        try {
            Object o = CharsetIsSupportedMethod.invoke(null, encoding);
            return Boolean.TRUE.equals(o);
        }
        catch (IllegalArgumentException illegalArgumentException) {
        }
        catch (IllegalAccessException illegalAccessException) {
        }
        catch (InvocationTargetException invocationTargetException) {
            return false;
        }
        return true;
    }

    private static class EncodingsRegistryReader
    extends RegistryReader {
        private List encodings;

        public EncodingsRegistryReader(List definedEncodings) {
            this.encodings = definedEncodings;
        }

        protected boolean readElement(IConfigurationElement element) {
            String name = element.getAttribute("name");
            if (name != null) {
                this.encodings.add(name);
            }
            return true;
        }
    }
}

