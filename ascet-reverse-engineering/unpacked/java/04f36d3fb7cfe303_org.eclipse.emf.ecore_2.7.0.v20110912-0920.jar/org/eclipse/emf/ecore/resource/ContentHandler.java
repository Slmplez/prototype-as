/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.content.IContentDescription
 *  org.eclipse.emf.common.util.URI
 */
package org.eclipse.emf.ecore.resource;

import java.io.IOException;
import java.io.InputStream;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.SortedMap;
import org.eclipse.core.runtime.content.IContentDescription;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.resource.impl.ContentHandlerImpl;
import org.eclipse.emf.ecore.resource.impl.ContentHandlerRegistryImpl;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface ContentHandler {
    public static final String OPTION_REQUESTED_PROPERTIES = "REQUESTED_PROPERTIES";
    public static final String VALIDITY_PROPERTY = "org.eclipse.emf.ecore:validity";
    public static final String CONTENT_TYPE_PROPERTY = "org.eclipse.emf.ecore:contentType";
    public static final String UNSPECIFIED_CONTENT_TYPE = "";
    public static final String CHARSET_PROPERTY = "org.eclipse.core.runtime:charset";
    public static final String BYTE_ORDER_MARK_PROPERTY = "org.eclipse.core.runtime:bom";
    public static final Map<String, Object> INVALID_CONTENT_DESCRIPTION = Collections.unmodifiableMap(ContentHandlerImpl.createContentDescription(Validity.INVALID));

    public boolean canHandle(URI var1);

    public Map<String, ?> contentDescription(URI var1, InputStream var2, Map<?, ?> var3, Map<Object, Object> var4) throws IOException;

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public static abstract class ByteOrderMark
    extends Enum<ByteOrderMark> {
        public static final /* enum */ ByteOrderMark UTF_8;
        public static final /* enum */ ByteOrderMark UTF_16BE;
        public static final /* enum */ ByteOrderMark UTF_16LE;
        private static final byte[] UTF_8_BYTES;
        private static final byte[] UTF_16BE_BYTES;
        private static final byte[] UTF_16LE_BYTES;
        private static final /* synthetic */ ByteOrderMark[] ENUM$VALUES;

        static {
            byte[] utf16LEBytes;
            byte[] utf16BEBytes;
            byte[] utf8Bytes;
            UTF_8 = new ByteOrderMark(){

                public byte[] bytes() {
                    return UTF_8_BYTES;
                }
            };
            UTF_16BE = new ByteOrderMark(){

                public byte[] bytes() {
                    return UTF_16BE_BYTES;
                }
            };
            UTF_16LE = new ByteOrderMark(){

                public byte[] bytes() {
                    return UTF_16LE_BYTES;
                }
            };
            ENUM$VALUES = new ByteOrderMark[]{UTF_8, UTF_16BE, UTF_16LE};
            try {
                utf8Bytes = IContentDescription.BOM_UTF_8;
                utf16BEBytes = IContentDescription.BOM_UTF_16BE;
                utf16LEBytes = IContentDescription.BOM_UTF_16LE;
            }
            catch (Throwable throwable) {
                utf8Bytes = new byte[]{-17, -69, -65};
                utf16BEBytes = new byte[]{-2, -1};
                utf16LEBytes = new byte[]{-1, -2};
            }
            UTF_8_BYTES = utf8Bytes;
            UTF_16BE_BYTES = utf16BEBytes;
            UTF_16LE_BYTES = utf16LEBytes;
        }

        public abstract byte[] bytes();

        public static ByteOrderMark read(InputStream inputStream) throws IOException {
            int first = inputStream.read();
            if (first == 239) {
                if (inputStream.read() == 187 && inputStream.read() == 191) {
                    return UTF_8;
                }
            } else if (first == 254) {
                if (inputStream.read() == 255) {
                    return UTF_16BE;
                }
            } else if (first == 255 && inputStream.read() == 254) {
                return UTF_16LE;
            }
            return null;
        }

        public static ByteOrderMark[] values() {
            ByteOrderMark[] byteOrderMarkArray = ENUM$VALUES;
            int n = byteOrderMarkArray.length;
            ByteOrderMark[] byteOrderMarkArray2 = new ByteOrderMark[n];
            System.arraycopy(ENUM$VALUES, 0, byteOrderMarkArray2, 0, n);
            return byteOrderMarkArray2;
        }

        public static ByteOrderMark valueOf(String string) {
            return Enum.valueOf(ByteOrderMark.class, string);
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public static interface Registry
    extends SortedMap<Integer, List<ContentHandler>> {
        public static final int VERY_HIGH_PRIORITY = -10000;
        public static final int HIGH_PRIORITY = -1000;
        public static final int NORMAL_PRIORITY = 0;
        public static final int LOW_PRIORITY = 1000;
        public static final int VERY_LOW_PRIORITY = 10000;
        public static final Registry INSTANCE = new ContentHandlerRegistryImpl();

        @Override
        public void put(int var1, ContentHandler var2);

        public List<ContentHandler> contentHandlers();
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public static enum Validity {
        INVALID,
        INDETERMINATE,
        VALID;

    }
}

