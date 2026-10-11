/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 */
package org.eclipse.jface.text;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.BadPartitioningException;
import org.eclipse.jface.text.DocumentEvent;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IDocumentExtension3;
import org.eclipse.jface.text.IDocumentExtension4;
import org.eclipse.jface.text.IDocumentPartitioner;
import org.eclipse.jface.text.IDocumentPartitionerExtension2;
import org.eclipse.jface.text.IRegion;
import org.eclipse.jface.text.ITypedRegion;
import org.eclipse.jface.text.TypedRegion;

public class TextUtilities {
    public static final String[] DELIMITERS = new String[]{"\n", "\r", "\r\n"};
    public static final String[] fgDelimiters = DELIMITERS;

    public static String determineLineDelimiter(String text, String hint) {
        try {
            int[] info = TextUtilities.indexOf(DELIMITERS, text, 0);
            return DELIMITERS[info[1]];
        }
        catch (ArrayIndexOutOfBoundsException arrayIndexOutOfBoundsException) {
            return hint;
        }
    }

    public static int[] indexOf(String[] searchStrings, String text, int offset) {
        int[] result = new int[]{-1, -1};
        int zeroIndex = -1;
        int i = 0;
        while (i < searchStrings.length) {
            int length = searchStrings[i].length();
            if (length == 0) {
                zeroIndex = i;
            } else {
                int index = text.indexOf(searchStrings[i], offset);
                if (index >= 0) {
                    if (result[0] == -1) {
                        result[0] = index;
                        result[1] = i;
                    } else if (index < result[0]) {
                        result[0] = index;
                        result[1] = i;
                    } else if (index == result[0] && length > searchStrings[result[1]].length()) {
                        result[0] = index;
                        result[1] = i;
                    }
                }
            }
            ++i;
        }
        if (zeroIndex > -1 && result[0] == -1) {
            result[0] = 0;
            result[1] = zeroIndex;
        }
        return result;
    }

    public static int endsWith(String[] searchStrings, String text) {
        int index = -1;
        int i = 0;
        while (i < searchStrings.length) {
            if (text.endsWith(searchStrings[i]) && (index == -1 || searchStrings[i].length() > searchStrings[index].length())) {
                index = i;
            }
            ++i;
        }
        return index;
    }

    public static int startsWith(String[] searchStrings, String text) {
        int index = -1;
        int i = 0;
        while (i < searchStrings.length) {
            if (text.startsWith(searchStrings[i]) && (index == -1 || searchStrings[i].length() > searchStrings[index].length())) {
                index = i;
            }
            ++i;
        }
        return index;
    }

    public static int equals(String[] compareStrings, String text) {
        int i = 0;
        while (i < compareStrings.length) {
            if (text.equals(compareStrings[i])) {
                return i;
            }
            ++i;
        }
        return -1;
    }

    public static DocumentEvent mergeUnprocessedDocumentEvents(IDocument unprocessedDocument, List documentEvents) throws BadLocationException {
        if (documentEvents.size() == 0) {
            return null;
        }
        Iterator iterator = documentEvents.iterator();
        DocumentEvent firstEvent = (DocumentEvent)iterator.next();
        IDocument document = unprocessedDocument;
        int offset = firstEvent.getOffset();
        int length = firstEvent.getLength();
        StringBuffer text = new StringBuffer(firstEvent.getText() == null ? "" : firstEvent.getText());
        while (iterator.hasNext()) {
            String eventText;
            int delta = text.length() - length;
            DocumentEvent event = (DocumentEvent)iterator.next();
            int eventOffset = event.getOffset();
            int eventLength = event.getLength();
            String string = eventText = event.getText() == null ? "" : event.getText();
            if (eventOffset > offset + length + delta) {
                String string2 = document.get(offset + length, eventOffset - delta - (offset + length));
                text.append(string2);
                text.append(eventText);
                length = eventOffset - delta + eventLength - offset;
                continue;
            }
            if (eventOffset + eventLength < offset) {
                String string3 = document.get(eventOffset + eventLength, offset - (eventOffset + eventLength));
                text.insert(0, string3);
                text.insert(0, eventText);
                length = offset + length - eventOffset;
                offset = eventOffset;
                continue;
            }
            int start = Math.max(0, eventOffset - offset);
            int end = Math.min(text.length(), eventLength + eventOffset - offset);
            text.replace(start, end, eventText);
            offset = Math.min(offset, eventOffset);
            int totalDelta = delta + eventText.length() - eventLength;
            length = text.length() - totalDelta;
        }
        return new DocumentEvent(document, offset, length, text.toString());
    }

    public static DocumentEvent mergeProcessedDocumentEvents(List documentEvents) throws BadLocationException {
        if (documentEvents.size() == 0) {
            return null;
        }
        ListIterator iterator = documentEvents.listIterator(documentEvents.size());
        DocumentEvent firstEvent = (DocumentEvent)iterator.previous();
        IDocument document = firstEvent.getDocument();
        int offset = firstEvent.getOffset();
        int length = firstEvent.getLength();
        int textLength = firstEvent.getText() == null ? 0 : firstEvent.getText().length();
        while (iterator.hasPrevious()) {
            int eventTextLength;
            int delta = length - textLength;
            DocumentEvent event = (DocumentEvent)iterator.previous();
            int eventOffset = event.getOffset();
            int eventLength = event.getLength();
            int n = eventTextLength = event.getText() == null ? 0 : event.getText().length();
            if (eventOffset > offset + textLength + delta) {
                length = eventOffset - delta - (offset + textLength) + length + eventLength;
                textLength = eventOffset - delta + eventTextLength - offset;
                continue;
            }
            if (eventOffset + eventTextLength < offset) {
                length = offset - (eventOffset + eventTextLength) + length + eventLength;
                textLength = offset + textLength - eventOffset;
                offset = eventOffset;
                continue;
            }
            int start = Math.max(0, eventOffset - offset);
            int end = Math.min(length, eventTextLength + eventOffset - offset);
            offset = Math.min(offset, eventOffset);
            int totalDelta = delta + eventLength - eventTextLength;
            textLength = (length += eventLength - (end - start)) - totalDelta;
        }
        String text = document.get(offset, textLength);
        return new DocumentEvent(document, offset, length, text);
    }

    public static Map removeDocumentPartitioners(IDocument document) {
        HashMap<String, IDocumentPartitioner> partitioners = new HashMap<String, IDocumentPartitioner>();
        if (document instanceof IDocumentExtension3) {
            IDocumentExtension3 extension3 = (IDocumentExtension3)((Object)document);
            String[] partitionings = extension3.getPartitionings();
            int i = 0;
            while (i < partitionings.length) {
                IDocumentPartitioner partitioner = extension3.getDocumentPartitioner(partitionings[i]);
                if (partitioner != null) {
                    extension3.setDocumentPartitioner(partitionings[i], null);
                    partitioner.disconnect();
                    partitioners.put(partitionings[i], partitioner);
                }
                ++i;
            }
        } else {
            IDocumentPartitioner partitioner = document.getDocumentPartitioner();
            if (partitioner != null) {
                document.setDocumentPartitioner(null);
                partitioner.disconnect();
                partitioners.put("__dftl_partitioning", partitioner);
            }
        }
        return partitioners;
    }

    public static void addDocumentPartitioners(IDocument document, Map partitioners) {
        if (document instanceof IDocumentExtension3) {
            IDocumentExtension3 extension3 = (IDocumentExtension3)((Object)document);
            Iterator e = partitioners.keySet().iterator();
            while (e.hasNext()) {
                String partitioning = (String)e.next();
                IDocumentPartitioner partitioner = (IDocumentPartitioner)partitioners.get(partitioning);
                partitioner.connect(document);
                extension3.setDocumentPartitioner(partitioning, partitioner);
            }
            partitioners.clear();
        } else {
            IDocumentPartitioner partitioner = (IDocumentPartitioner)partitioners.get("__dftl_partitioning");
            partitioner.connect(document);
            document.setDocumentPartitioner(partitioner);
        }
    }

    public static String getContentType(IDocument document, String partitioning, int offset, boolean preferOpenPartitions) throws BadLocationException {
        if (document instanceof IDocumentExtension3) {
            IDocumentExtension3 extension3 = (IDocumentExtension3)((Object)document);
            try {
                return extension3.getContentType(partitioning, offset, preferOpenPartitions);
            }
            catch (BadPartitioningException badPartitioningException) {
                return "__dftl_partition_content_type";
            }
        }
        return document.getContentType(offset);
    }

    public static ITypedRegion getPartition(IDocument document, String partitioning, int offset, boolean preferOpenPartitions) throws BadLocationException {
        if (document instanceof IDocumentExtension3) {
            IDocumentExtension3 extension3 = (IDocumentExtension3)((Object)document);
            try {
                return extension3.getPartition(partitioning, offset, preferOpenPartitions);
            }
            catch (BadPartitioningException badPartitioningException) {
                return new TypedRegion(0, document.getLength(), "__dftl_partition_content_type");
            }
        }
        return document.getPartition(offset);
    }

    public static ITypedRegion[] computePartitioning(IDocument document, String partitioning, int offset, int length, boolean includeZeroLengthPartitions) throws BadLocationException {
        if (document instanceof IDocumentExtension3) {
            IDocumentExtension3 extension3 = (IDocumentExtension3)((Object)document);
            try {
                return extension3.computePartitioning(partitioning, offset, length, includeZeroLengthPartitions);
            }
            catch (BadPartitioningException badPartitioningException) {
                return new ITypedRegion[0];
            }
        }
        return document.computePartitioning(offset, length);
    }

    public static String[] computePartitionManagingCategories(IDocument document) {
        IDocumentExtension3 extension3;
        String[] partitionings;
        if (document instanceof IDocumentExtension3 && (partitionings = (extension3 = (IDocumentExtension3)((Object)document)).getPartitionings()) != null) {
            HashSet<String> categories = new HashSet<String>();
            int i = 0;
            while (i < partitionings.length) {
                IDocumentPartitionerExtension2 extension2;
                String[] c;
                IDocumentPartitioner p = extension3.getDocumentPartitioner(partitionings[i]);
                if (p instanceof IDocumentPartitionerExtension2 && (c = (extension2 = (IDocumentPartitionerExtension2)((Object)p)).getManagingPositionCategories()) != null) {
                    int j = 0;
                    while (j < c.length) {
                        categories.add(c[j]);
                        ++j;
                    }
                }
                ++i;
            }
            String[] result = new String[categories.size()];
            categories.toArray(result);
            return result;
        }
        return null;
    }

    public static String getDefaultLineDelimiter(IDocument document) {
        if (document instanceof IDocumentExtension4) {
            return ((IDocumentExtension4)((Object)document)).getDefaultLineDelimiter();
        }
        String lineDelimiter = null;
        try {
            lineDelimiter = document.getLineDelimiter(0);
        }
        catch (BadLocationException badLocationException) {}
        if (lineDelimiter != null) {
            return lineDelimiter;
        }
        String sysLineDelimiter = System.getProperty("line.separator");
        String[] delimiters = document.getLegalLineDelimiters();
        Assert.isTrue((delimiters.length > 0 ? 1 : 0) != 0);
        int i = 0;
        while (i < delimiters.length) {
            if (delimiters[i].equals(sysLineDelimiter)) {
                lineDelimiter = sysLineDelimiter;
                break;
            }
            ++i;
        }
        if (lineDelimiter == null) {
            lineDelimiter = delimiters[0];
        }
        return lineDelimiter;
    }

    public static boolean overlaps(IRegion left, IRegion right) {
        if (left == null || right == null) {
            return false;
        }
        int rightEnd = right.getOffset() + right.getLength();
        int leftEnd = left.getOffset() + left.getLength();
        if (right.getLength() > 0) {
            if (left.getLength() > 0) {
                return left.getOffset() < rightEnd && right.getOffset() < leftEnd;
            }
            return right.getOffset() <= left.getOffset() && left.getOffset() < rightEnd;
        }
        if (left.getLength() > 0) {
            return left.getOffset() <= right.getOffset() && right.getOffset() < leftEnd;
        }
        return left.getOffset() == right.getOffset();
    }

    public static String[] copy(String[] array) {
        if (array != null) {
            String[] copy = new String[array.length];
            System.arraycopy(array, 0, copy, 0, array.length);
            return copy;
        }
        return null;
    }

    public static int[] copy(int[] array) {
        if (array != null) {
            int[] copy = new int[array.length];
            System.arraycopy(array, 0, copy, 0, array.length);
            return copy;
        }
        return null;
    }
}

