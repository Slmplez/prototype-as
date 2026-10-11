/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.p2.metadata.expression;

import java.io.Serializable;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class SimplePattern
implements Serializable,
Comparable<SimplePattern> {
    private static final long serialVersionUID = -2477990705739062410L;
    private final String pattern;
    private transient Node node;

    public boolean isMatch(CharSequence value) {
        if (this.node == null) {
            this.node = SimplePattern.parse(this.pattern, 0);
        }
        return this.node.match(value, 0);
    }

    public String toString() {
        return this.pattern;
    }

    @Override
    public int compareTo(SimplePattern o) {
        return this.pattern.compareTo(o.pattern);
    }

    public boolean equals(Object o) {
        return o == this || o instanceof SimplePattern && ((SimplePattern)o).pattern.equals(this.pattern);
    }

    public int hashCode() {
        return 3 * this.pattern.hashCode();
    }

    private SimplePattern(String pattern) {
        this.pattern = pattern;
    }

    public static SimplePattern compile(String pattern) {
        if (pattern == null) {
            throw new IllegalArgumentException("Pattern can not be null");
        }
        return new SimplePattern(pattern);
    }

    private static Node parse(String pattern, int pos) {
        int top = pattern.length();
        StringBuffer bld = null;
        Node parsedNode = null;
        block5: while (pos < top) {
            char c = pattern.charAt(pos);
            switch (c) {
                case '*': {
                    parsedNode = ++pos == top ? new AllNode() : new RubberBandNode(SimplePattern.parse(pattern, pos));
                    break block5;
                }
                case '?': {
                    parsedNode = new AnyCharacterNode(SimplePattern.parse(pattern, pos + 1));
                    break block5;
                }
                case '\\': {
                    if (++pos == top) {
                        throw new IllegalArgumentException("Pattern ends with escape");
                    }
                    c = pattern.charAt(pos);
                }
                default: {
                    if (bld == null) {
                        bld = new StringBuffer();
                    }
                    bld.append(c);
                    ++pos;
                }
            }
        }
        if (bld != null) {
            String constant = bld.toString();
            parsedNode = parsedNode == null ? new EndConstantNode(constant) : new ConstantNode(parsedNode, constant);
        }
        return parsedNode;
    }

    static class AllNode
    extends Node {
        AllNode() {
        }

        boolean match(CharSequence value, int pos) {
            return true;
        }
    }

    static class AnyCharacterNode
    extends Node {
        final Node next;

        AnyCharacterNode(Node next) {
            this.next = next;
        }

        boolean match(CharSequence value, int pos) {
            int top = value.length();
            return this.next == null ? pos + 1 == top : this.next.match(value, pos + 1);
        }
    }

    static class ConstantNode
    extends Node {
        final Node next;
        final String constant;

        ConstantNode(Node next, String constant) {
            this.next = next;
            this.constant = constant;
        }

        boolean match(CharSequence value, int pos) {
            int max = this.constant.length() + pos;
            int top = value.length();
            if (top < max) {
                return false;
            }
            int idx = 0;
            while (pos < max) {
                if (value.charAt(pos++) == this.constant.charAt(idx++)) continue;
                return false;
            }
            return this.next == null ? pos == top : this.next.match(value, pos);
        }
    }

    static class EndConstantNode
    extends Node {
        final String constant;

        EndConstantNode(String constant) {
            this.constant = constant;
        }

        boolean match(CharSequence value, int pos) {
            int max = this.constant.length() + pos;
            int top = value.length();
            if (top != max) {
                return false;
            }
            int idx = 0;
            while (pos < max) {
                if (value.charAt(pos++) == this.constant.charAt(idx++)) continue;
                return false;
            }
            return true;
        }

        String getEndingConstant() {
            return this.constant;
        }
    }

    static abstract class Node {
        Node() {
        }

        abstract boolean match(CharSequence var1, int var2);

        String getEndingConstant() {
            return null;
        }
    }

    static class RubberBandNode
    extends Node {
        final Node next;

        RubberBandNode(Node next) {
            this.next = next;
        }

        /*
         * Unable to fully structure code
         */
        boolean match(CharSequence value, int pos) {
            top = value.length();
            ending = this.next.getEndingConstant();
            if (ending == null) ** GOTO lbl13
            clen = ending.length();
            if (clen <= top - pos) ** GOTO lbl9
            return false;
lbl-1000:
            // 1 sources

            {
                if (ending.charAt(--clen) == value.charAt(--top)) continue;
                return false;
lbl9:
                // 2 sources

                ** while (clen > 0)
            }
lbl10:
            // 1 sources

            return true;
lbl-1000:
            // 1 sources

            {
                if (!this.next.match(value, pos++)) continue;
                return true;
lbl13:
                // 2 sources

                ** while (pos < top)
            }
lbl14:
            // 1 sources

            return false;
        }
    }
}

