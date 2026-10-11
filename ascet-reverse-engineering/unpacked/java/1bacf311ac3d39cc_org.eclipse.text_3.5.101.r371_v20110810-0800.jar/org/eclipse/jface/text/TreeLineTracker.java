/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 */
package org.eclipse.jface.text;

import java.util.Arrays;
import java.util.LinkedList;
import java.util.List;
import java.util.ListIterator;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.text.AbstractLineTracker;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.ILineTracker;
import org.eclipse.jface.text.IRegion;
import org.eclipse.jface.text.Line;
import org.eclipse.jface.text.ListLineTracker;
import org.eclipse.jface.text.Region;

abstract class TreeLineTracker
implements ILineTracker {
    private static final boolean ASSERT = false;
    private static final String NO_DELIM = "";
    private Node fRoot = new Node(0, "");

    protected TreeLineTracker() {
    }

    TreeLineTracker(ListLineTracker tracker) {
        List lines = tracker.getLines();
        int n = lines.size();
        if (n == 0) {
            return;
        }
        Line line = (Line)lines.get(0);
        String delim = line.delimiter;
        if (delim == null) {
            delim = NO_DELIM;
        }
        int length = line.length;
        Node node = this.fRoot = new Node(length, delim);
        int i = 1;
        while (i < n) {
            line = (Line)lines.get(i);
            delim = line.delimiter;
            if (delim == null) {
                delim = NO_DELIM;
            }
            length = line.length;
            node = this.insertAfter(node, length, delim);
            ++i;
        }
        if (node.delimiter != NO_DELIM) {
            this.insertAfter(node, 0, NO_DELIM);
        }
    }

    private Node nodeByOffset(int offset) throws BadLocationException {
        int remaining = offset;
        Node node = this.fRoot;
        while (true) {
            if (node == null) {
                this.fail(offset);
            }
            if (remaining < node.offset) {
                node = node.left;
                continue;
            }
            if ((remaining -= node.offset) < node.length || remaining == node.length && node.right == null) break;
            remaining -= node.length;
            node = node.right;
        }
        return node;
    }

    private int lineByOffset(int offset) throws BadLocationException {
        int remaining = offset;
        Node node = this.fRoot;
        int line = 0;
        while (true) {
            if (node == null) {
                this.fail(offset);
            }
            if (remaining < node.offset) {
                node = node.left;
                continue;
            }
            line += node.line;
            if ((remaining -= node.offset) < node.length || remaining == node.length && node.right == null) {
                return line;
            }
            remaining -= node.length;
            ++line;
            node = node.right;
        }
    }

    private Node nodeByLine(int line) throws BadLocationException {
        int remaining = line;
        Node node = this.fRoot;
        while (true) {
            if (node == null) {
                this.fail(line);
            }
            if (remaining == node.line) break;
            if (remaining < node.line) {
                node = node.left;
                continue;
            }
            remaining -= node.line + 1;
            node = node.right;
        }
        return node;
    }

    private int offsetByLine(int line) throws BadLocationException {
        int remaining = line;
        int offset = 0;
        Node node = this.fRoot;
        while (true) {
            if (node == null) {
                this.fail(line);
            }
            if (remaining == node.line) {
                return offset + node.offset;
            }
            if (remaining < node.line) {
                node = node.left;
                continue;
            }
            remaining -= node.line + 1;
            offset += node.offset + node.length;
            node = node.right;
        }
    }

    private void rotateLeft(Node node) {
        Node child = node.right;
        boolean leftChild = node.parent == null || node == node.parent.left;
        this.setChild(node.parent, child, leftChild);
        this.setChild(node, child.left, false);
        this.setChild(child, node, true);
        child.line += node.line + 1;
        child.offset += node.offset + node.length;
    }

    private void rotateRight(Node node) {
        Node child = node.left;
        boolean leftChild = node.parent == null || node == node.parent.left;
        this.setChild(node.parent, child, leftChild);
        this.setChild(node, child.right, true);
        this.setChild(child, node, false);
        node.line -= child.line + 1;
        node.offset -= child.offset + child.length;
    }

    private void setChild(Node parent, Node child, boolean isLeftChild) {
        if (parent == null) {
            this.fRoot = child == null ? new Node(0, NO_DELIM) : child;
        } else if (isLeftChild) {
            parent.left = child;
        } else {
            parent.right = child;
        }
        if (child != null) {
            child.parent = parent;
        }
    }

    private void singleLeftRotation(Node node, Node parent) {
        this.rotateLeft(parent);
        node.balance = 0;
        parent.balance = 0;
    }

    private void singleRightRotation(Node node, Node parent) {
        this.rotateRight(parent);
        node.balance = 0;
        parent.balance = 0;
    }

    private void rightLeftRotation(Node node, Node parent) {
        Node child = node.left;
        this.rotateRight(node);
        this.rotateLeft(parent);
        if (child.balance == 1) {
            node.balance = 0;
            parent.balance = (byte)-1;
            child.balance = 0;
        } else if (child.balance == 0) {
            node.balance = 0;
            parent.balance = 0;
        } else if (child.balance == -1) {
            node.balance = 1;
            parent.balance = 0;
            child.balance = 0;
        }
    }

    private void leftRightRotation(Node node, Node parent) {
        Node child = node.right;
        this.rotateLeft(node);
        this.rotateRight(parent);
        if (child.balance == -1) {
            node.balance = 0;
            parent.balance = 1;
            child.balance = 0;
        } else if (child.balance == 0) {
            node.balance = 0;
            parent.balance = 0;
        } else if (child.balance == 1) {
            node.balance = (byte)-1;
            parent.balance = 0;
            child.balance = 0;
        }
    }

    private Node insertAfter(Node node, int length, String delimiter) {
        Node added = new Node(length, delimiter);
        if (node.right == null) {
            this.setChild(node, added, false);
        } else {
            this.setChild(this.successorDown(node.right), added, true);
        }
        this.updateParentChain(added, length, 1);
        this.updateParentBalanceAfterInsertion(added);
        return added;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void updateParentBalanceAfterInsertion(Node node) {
        Node parent = node.parent;
        block5: while (parent != null) {
            parent.balance = node == parent.left ? (byte)(parent.balance - 1) : (byte)(parent.balance + 1);
            switch (parent.balance) {
                case -1: 
                case 1: {
                    node = parent;
                    parent = node.parent;
                    continue block5;
                }
                case -2: {
                    this.rebalanceAfterInsertionLeft(node);
                    break;
                }
                case 2: {
                    this.rebalanceAfterInsertionRight(node);
                }
            }
            return;
        }
    }

    private void rebalanceAfterInsertionRight(Node node) {
        Node parent = node.parent;
        if (node.balance == 1) {
            this.singleLeftRotation(node, parent);
        } else if (node.balance == -1) {
            this.rightLeftRotation(node, parent);
        }
    }

    private void rebalanceAfterInsertionLeft(Node node) {
        Node parent = node.parent;
        if (node.balance == -1) {
            this.singleRightRotation(node, parent);
        } else if (node.balance == 1) {
            this.leftRightRotation(node, parent);
        }
    }

    public final void replace(int offset, int length, String text) throws BadLocationException {
        int remaining = offset;
        Node first = this.fRoot;
        while (true) {
            if (first == null) {
                this.fail(offset);
            }
            if (remaining < first.offset) {
                first = first.left;
                continue;
            }
            if ((remaining -= first.offset) < first.length || remaining == first.length && first.right == null) break;
            remaining -= first.length;
            first = first.right;
        }
        int firstNodeOffset = offset - remaining;
        Node last = offset + length < firstNodeOffset + first.length ? first : this.nodeByOffset(offset + length);
        int firstLineDelta = firstNodeOffset + first.length - offset;
        if (first == last) {
            this.replaceInternal(first, text, length, firstLineDelta);
        } else {
            this.replaceFromTo(first, last, text, length, firstLineDelta);
        }
    }

    private void replaceInternal(Node node, String text, int length, int firstLineDelta) {
        AbstractLineTracker.DelimiterInfo info;
        AbstractLineTracker.DelimiterInfo delimiterInfo = info = text == null ? null : this.nextDelimiterInfo(text, 0);
        if (info == null || info.delimiter == null) {
            int added = text == null ? 0 : text.length();
            this.updateLength(node, added - length);
        } else {
            int remainder = firstLineDelta - length;
            String remDelim = node.delimiter;
            int consumed = info.delimiterIndex + info.delimiterLength;
            int delta = consumed - firstLineDelta;
            this.updateLength(node, delta);
            node.delimiter = info.delimiter;
            info = this.nextDelimiterInfo(text, consumed);
            while (info != null) {
                int lineLen = info.delimiterIndex - consumed + info.delimiterLength;
                node = this.insertAfter(node, lineLen, info.delimiter);
                info = this.nextDelimiterInfo(text, consumed += lineLen);
            }
            this.insertAfter(node, remainder + text.length() - consumed, remDelim);
        }
    }

    private void replaceFromTo(Node node, Node last, String text, int length, int firstLineDelta) {
        AbstractLineTracker.DelimiterInfo info;
        Node successor = this.successor(node);
        while (successor != last) {
            length -= successor.length;
            Node toDelete = successor;
            successor = this.successor(successor);
            this.updateLength(toDelete, -toDelete.length);
        }
        AbstractLineTracker.DelimiterInfo delimiterInfo = info = text == null ? null : this.nextDelimiterInfo(text, 0);
        if (info == null || info.delimiter == null) {
            int added = text == null ? 0 : text.length();
            this.join(node, last, added - length);
        } else {
            int consumed = info.delimiterIndex + info.delimiterLength;
            this.updateLength(node, consumed - firstLineDelta);
            node.delimiter = info.delimiter;
            length -= firstLineDelta;
            info = this.nextDelimiterInfo(text, consumed);
            while (info != null) {
                int lineLen = info.delimiterIndex - consumed + info.delimiterLength;
                node = this.insertAfter(node, lineLen, info.delimiter);
                info = this.nextDelimiterInfo(text, consumed += lineLen);
            }
            this.updateLength(last, text.length() - consumed - length);
        }
    }

    private void join(Node one, Node two, int delta) {
        int oneLength = one.length;
        this.updateLength(one, -oneLength);
        this.updateLength(two, oneLength + delta);
    }

    private void updateLength(Node node, int delta) {
        node.length += delta;
        boolean delete = node.length == 0 && node.delimiter != NO_DELIM;
        int lineDelta = delete ? -1 : 0;
        if (delta != 0 || lineDelta != 0) {
            this.updateParentChain(node, delta, lineDelta);
        }
        if (delete) {
            this.delete(node);
        }
    }

    private void updateParentChain(Node node, int deltaLength, int deltaLines) {
        this.updateParentChain(node, null, deltaLength, deltaLines);
    }

    private void updateParentChain(Node from, Node to, int deltaLength, int deltaLines) {
        Node parent = from.parent;
        while (parent != to) {
            if (from == parent.left) {
                parent.offset += deltaLength;
                parent.line += deltaLines;
            }
            from = parent;
            parent = from.parent;
        }
    }

    private void delete(Node node) {
        boolean lostLeftChild;
        Node toUpdate;
        boolean isLeftChild;
        Node parent = node.parent;
        boolean bl = isLeftChild = parent == null || node == parent.left;
        if (node.left == null || node.right == null) {
            Node replacement = node.left == null ? node.right : node.left;
            this.setChild(parent, replacement, isLeftChild);
            toUpdate = parent;
            lostLeftChild = isLeftChild;
        } else if (node.right.left == null) {
            Node replacement = node.right;
            this.setChild(parent, replacement, isLeftChild);
            this.setChild(replacement, node.left, true);
            replacement.line = node.line;
            replacement.offset = node.offset;
            replacement.balance = node.balance;
            toUpdate = replacement;
            lostLeftChild = false;
        } else {
            Node successor = this.successor(node);
            toUpdate = successor.parent;
            lostLeftChild = true;
            this.updateParentChain(successor, node, -successor.length, -1);
            this.setChild(toUpdate, successor.right, true);
            this.setChild(successor, node.right, false);
            this.setChild(successor, node.left, true);
            this.setChild(parent, successor, isLeftChild);
            successor.line = node.line;
            successor.offset = node.offset;
            successor.balance = node.balance;
        }
        this.updateParentBalanceAfterDeletion(toUpdate, lostLeftChild);
    }

    private void updateParentBalanceAfterDeletion(Node node, boolean wasLeftChild) {
        while (node != null) {
            node.balance = wasLeftChild ? (byte)(node.balance + 1) : (byte)(node.balance - 1);
            Node parent = node.parent;
            if (parent != null) {
                wasLeftChild = node == parent.left;
            }
            switch (node.balance) {
                case -1: 
                case 1: {
                    return;
                }
                case -2: {
                    if (!this.rebalanceAfterDeletionRight(node.left)) break;
                    return;
                }
                case 2: {
                    if (!this.rebalanceAfterDeletionLeft(node.right)) break;
                    return;
                }
            }
            node = parent;
        }
    }

    private boolean rebalanceAfterDeletionLeft(Node node) {
        Node parent = node.parent;
        if (node.balance == 1) {
            this.singleLeftRotation(node, parent);
            return false;
        }
        if (node.balance == -1) {
            this.rightLeftRotation(node, parent);
            return false;
        }
        if (node.balance == 0) {
            this.rotateLeft(parent);
            node.balance = (byte)-1;
            parent.balance = 1;
            return true;
        }
        return true;
    }

    private boolean rebalanceAfterDeletionRight(Node node) {
        Node parent = node.parent;
        if (node.balance == -1) {
            this.singleRightRotation(node, parent);
            return false;
        }
        if (node.balance == 1) {
            this.leftRightRotation(node, parent);
            return false;
        }
        if (node.balance == 0) {
            this.rotateRight(parent);
            node.balance = 1;
            parent.balance = (byte)-1;
            return true;
        }
        return true;
    }

    private Node successor(Node node) {
        if (node.right != null) {
            return this.successorDown(node.right);
        }
        return this.successorUp(node);
    }

    private Node successorUp(Node node) {
        Node child = node;
        Node parent = child.parent;
        while (parent != null) {
            if (child == parent.left) {
                return parent;
            }
            child = parent;
            parent = child.parent;
        }
        return null;
    }

    private Node successorDown(Node node) {
        Node child = node.left;
        while (child != null) {
            node = child;
            child = node.left;
        }
        return node;
    }

    private void fail(int offset) throws BadLocationException {
        throw new BadLocationException();
    }

    protected abstract AbstractLineTracker.DelimiterInfo nextDelimiterInfo(String var1, int var2);

    public final String getLineDelimiter(int line) throws BadLocationException {
        Node node = this.nodeByLine(line);
        return node.delimiter == NO_DELIM ? null : node.delimiter;
    }

    public final int computeNumberOfLines(String text) {
        int count = 0;
        int start = 0;
        AbstractLineTracker.DelimiterInfo delimiterInfo = this.nextDelimiterInfo(text, start);
        while (delimiterInfo != null && delimiterInfo.delimiterIndex > -1) {
            ++count;
            start = delimiterInfo.delimiterIndex + delimiterInfo.delimiterLength;
            delimiterInfo = this.nextDelimiterInfo(text, start);
        }
        return count;
    }

    public final int getNumberOfLines() {
        Node node = this.fRoot;
        int lines = 0;
        while (node != null) {
            lines += node.line + 1;
            node = node.right;
        }
        return lines;
    }

    public final int getNumberOfLines(int offset, int length) throws BadLocationException {
        if (length == 0) {
            return 1;
        }
        int startLine = this.lineByOffset(offset);
        int endLine = this.lineByOffset(offset + length);
        return endLine - startLine + 1;
    }

    public final int getLineOffset(int line) throws BadLocationException {
        return this.offsetByLine(line);
    }

    public final int getLineLength(int line) throws BadLocationException {
        Node node = this.nodeByLine(line);
        return node.length;
    }

    public final int getLineNumberOfOffset(int offset) throws BadLocationException {
        return this.lineByOffset(offset);
    }

    public final IRegion getLineInformationOfOffset(int offset) throws BadLocationException {
        int remaining = offset;
        Node node = this.fRoot;
        while (true) {
            if (node == null) {
                this.fail(offset);
            }
            if (remaining < node.offset) {
                node = node.left;
                continue;
            }
            if ((remaining -= node.offset) < node.length || remaining == node.length && node.right == null) break;
            remaining -= node.length;
            node = node.right;
        }
        int lineOffset = offset - remaining;
        return new Region(lineOffset, node.pureLength());
    }

    public final IRegion getLineInformation(int line) throws BadLocationException {
        try {
            int remaining = line;
            int offset = 0;
            Node node = this.fRoot;
            while (true) {
                if (node == null) {
                    this.fail(line);
                }
                if (remaining == node.line) break;
                if (remaining < node.line) {
                    node = node.left;
                    continue;
                }
                remaining -= node.line + 1;
                offset += node.offset + node.length;
                node = node.right;
            }
            return new Region(offset += node.offset, node.pureLength());
        }
        catch (BadLocationException x) {
            if (line > 0 && line == this.getNumberOfLines()) {
                int remaining = --line;
                int offset = 0;
                Node node = this.fRoot;
                while (true) {
                    if (node == null) {
                        this.fail(line);
                    }
                    if (remaining == node.line) {
                        offset += node.offset;
                        break;
                    }
                    if (remaining < node.line) {
                        node = node.left;
                        continue;
                    }
                    remaining -= node.line + 1;
                    offset += node.offset + node.length;
                    node = node.right;
                }
                Node last = node;
                if (last.length > 0) {
                    return new Region(offset + last.length, 0);
                }
            }
            throw x;
        }
    }

    public final void set(String text) {
        this.fRoot = new Node(0, NO_DELIM);
        try {
            this.replace(0, 0, text);
        }
        catch (BadLocationException badLocationException) {
            throw new InternalError();
        }
    }

    public String toString() {
        int depth = this.computeDepth(this.fRoot);
        int WIDTH = 30;
        int leaves = (int)Math.pow(2.0, depth - 1);
        int width = WIDTH * leaves;
        String empty = ".";
        LinkedList<Node> roots = new LinkedList<Node>();
        roots.add(this.fRoot);
        StringBuffer buf = new StringBuffer((width + 1) * depth);
        int indents = leaves;
        char[] space = new char[leaves * WIDTH / 2];
        Arrays.fill(space, ' ');
        int d = 0;
        while (d < depth) {
            int spaces = Math.max(0, (indents /= 2) * WIDTH - WIDTH / 2);
            ListIterator<Node> it = roots.listIterator();
            while (it.hasNext()) {
                String box;
                buf.append(space, 0, spaces);
                Node node = (Node)it.next();
                if (node == null) {
                    it.add(null);
                    box = empty;
                } else {
                    it.set(node.left);
                    it.add(node.right);
                    box = node.toString();
                }
                int pad_left = (WIDTH - box.length() + 1) / 2;
                int pad_right = WIDTH - box.length() - pad_left;
                buf.append(space, 0, pad_left);
                buf.append(box);
                buf.append(space, 0, pad_right);
                buf.append(space, 0, spaces);
            }
            buf.append('\n');
            ++d;
        }
        return buf.toString();
    }

    private byte computeDepth(Node root) {
        if (root == null) {
            return 0;
        }
        return (byte)(Math.max(this.computeDepth(root.left), this.computeDepth(root.right)) + 1);
    }

    private void checkTree() {
        this.checkTreeStructure(this.fRoot);
        try {
            this.checkTreeOffsets(this.nodeByOffset(0), new int[2], null);
        }
        catch (BadLocationException badLocationException) {
            throw new AssertionError();
        }
    }

    private byte checkTreeStructure(Node node) {
        if (node == null) {
            return 0;
        }
        byte leftDepth = this.checkTreeStructure(node.left);
        byte rightDepth = this.checkTreeStructure(node.right);
        Assert.isTrue((node.balance == rightDepth - leftDepth ? 1 : 0) != 0);
        Assert.isTrue((node.left == null || node.left.parent == node ? 1 : 0) != 0);
        Assert.isTrue((node.right == null || node.right.parent == node ? 1 : 0) != 0);
        return (byte)(Math.max(rightDepth, leftDepth) + 1);
    }

    private int[] checkTreeOffsets(Node node, int[] offLen, Node last) {
        if (node == last) {
            return offLen;
        }
        Assert.isTrue((node.offset == offLen[0] ? 1 : 0) != 0);
        Assert.isTrue((node.line == offLen[1] ? 1 : 0) != 0);
        if (node.right != null) {
            int[] result = this.checkTreeOffsets(this.successorDown(node.right), new int[2], node);
            offLen[0] = offLen[0] + result[0];
            offLen[1] = offLen[1] + result[1];
        }
        offLen[0] = offLen[0] + node.length;
        offLen[1] = offLen[1] + 1;
        return this.checkTreeOffsets(node.parent, offLen, last);
    }

    private static final class Node {
        int line;
        int offset;
        int length;
        String delimiter;
        Node parent;
        Node left;
        Node right;
        byte balance;

        Node(int length, String delimiter) {
            this.length = length;
            this.delimiter = delimiter;
        }

        public final String toString() {
            String bal;
            switch (this.balance) {
                case 0: {
                    bal = "=";
                    break;
                }
                case 1: {
                    bal = "+";
                    break;
                }
                case 2: {
                    bal = "++";
                    break;
                }
                case -1: {
                    bal = "-";
                    break;
                }
                case -2: {
                    bal = "--";
                    break;
                }
                default: {
                    bal = Byte.toString(this.balance);
                }
            }
            return "[" + this.offset + "+" + this.pureLength() + "+" + this.delimiter.length() + "|" + this.line + "|" + bal + "]";
        }

        int pureLength() {
            return this.length - this.delimiter.length();
        }
    }
}

