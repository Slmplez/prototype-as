/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.p2.metadata;

import java.io.Serializable;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
class EnumDefinition
implements Comparable<EnumDefinition>,
Serializable {
    private static final long serialVersionUID = 7237775466362654473L;
    private static final Map<EnumDefinition, EnumSegment[]> enumDefinitionCache = new HashMap<EnumDefinition, EnumSegment[]>();
    private final String[][] identifiers;
    private final int longestLength;
    private final int shortestLength;

    private static EnumSegment[] getEnumSegments(EnumDefinition ed) {
        EnumSegment[] values = enumDefinitionCache.get(ed);
        if (values == null) {
            int ordinal = ed.identifiers.length;
            values = new EnumSegment[ordinal];
            while (--ordinal >= 0) {
                values[ordinal] = new EnumSegment(ordinal, ed);
            }
            enumDefinitionCache.put(ed, values);
        }
        return values;
    }

    /*
     * Unable to fully structure code
     */
    static EnumDefinition getEnumDefinition(List<List<String>> identifiers) {
        block0: for (EnumDefinition ed : EnumDefinition.enumDefinitionCache.keySet()) {
            defs = ed.identifiers;
            ordinal = defs.length;
            if (ordinal == identifiers.size()) ** GOTO lbl13
            continue;
            {
                def = defs[ordinal];
                ldef = identifiers.get(ordinal);
                idx = def.length;
                if (ldef.size() == idx) ** GOTO lbl-1000
                continue block0;
                while (def[idx].equals(ldef.get(idx))) lbl-1000:
                // 2 sources

                {
                    if (--idx >= 0) continue;
lbl13:
                    // 2 sources

                    if (--ordinal >= 0) continue block1;
                }
                continue block0;
            }
            {
                return ed;
                break;
            }
        }
        ed = new EnumDefinition(identifiers);
        EnumDefinition.getEnumSegments(ed);
        return ed;
    }

    private EnumDefinition(List<List<String>> identifiers) {
        int ordinal = identifiers.size();
        String[][] defs = new String[ordinal][];
        int minLen = Integer.MAX_VALUE;
        int maxLen = 0;
        while (--ordinal >= 0) {
            List<String> idents = identifiers.get(ordinal);
            int idx = idents.size();
            String[] def = idents.toArray(new String[idx]);
            defs[ordinal] = def;
            while (--idx >= 0) {
                int idLen = def[idx].length();
                if (idLen < minLen) {
                    minLen = idLen;
                }
                if (idLen <= maxLen) continue;
                maxLen = idLen;
            }
        }
        this.shortestLength = minLen;
        this.longestLength = maxLen;
        this.identifiers = defs;
    }

    static EnumSegment getSegment(List<List<String>> identifiers, int ordinal) {
        return new EnumDefinition(identifiers).getSegment(ordinal);
    }

    EnumSegment getSegment(int ordinal) {
        return EnumDefinition.getEnumSegments(this)[ordinal];
    }

    int getOrdinal(String identifier) {
        if (identifier != null) {
            int ordinal = this.identifiers.length;
            while (--ordinal >= 0) {
                String[] idents = this.identifiers[ordinal];
                int idx = idents.length;
                while (--idx >= 0) {
                    if (!idents[idx].equals(identifier)) continue;
                    return ordinal;
                }
            }
        }
        return -1;
    }

    String getIdentifier(int ordinal) {
        return ordinal >= 0 && ordinal < this.identifiers.length ? this.identifiers[ordinal][0] : null;
    }

    public int hashCode() {
        int result = 1;
        int ordinal = this.identifiers.length;
        while (--ordinal > 0) {
            String[] idents = this.identifiers[ordinal];
            int idx = idents.length;
            while (--idx >= 0) {
                result = 31 * result + idents[idx].hashCode();
            }
        }
        return result;
    }

    /*
     * Unable to fully structure code
     */
    public boolean equals(Object o) {
        if (o == this) {
            return true;
        }
        if (!(o instanceof EnumDefinition)) {
            return false;
        }
        ordinal = this.identifiers.length;
        otherIds = ((EnumDefinition)o).identifiers;
        if (ordinal == otherIds.length) ** GOTO lbl11
        return false;
lbl-1000:
        // 1 sources

        {
            if (Arrays.equals(this.identifiers[ordinal], otherIds[ordinal])) continue;
            return false;
lbl11:
            // 2 sources

            ** while (--ordinal >= 0)
        }
lbl12:
        // 1 sources

        return true;
    }

    @Override
    public int compareTo(EnumDefinition o) {
        if (o == this) {
            return 0;
        }
        int top = this.identifiers.length;
        int cmp = top - o.identifiers.length;
        if (cmp != 0) {
            return cmp;
        }
        int idx = 0;
        while (idx < top) {
            cmp = this.identifiers[idx][0].compareTo(o.identifiers[idx][0]);
            if (cmp != 0) {
                return cmp;
            }
            ++idx;
        }
        return 0;
    }

    public String toString() {
        StringBuffer bld = new StringBuffer();
        this.toString(bld);
        return bld.toString();
    }

    public void toString(StringBuffer bld) {
        bld.append('{');
        int top = this.identifiers.length;
        int ordinal = 0;
        while (true) {
            String[] idents = this.identifiers[ordinal];
            int identsTop = idents.length;
            bld.append(idents[0]);
            int idx = 1;
            while (idx < identsTop) {
                bld.append('=');
                bld.append(idents[idx]);
                ++idx;
            }
            if (++ordinal == top) break;
            bld.append(',');
        }
        bld.append('}');
    }

    void toString(StringBuffer bld, int selectedOrdinal) {
        bld.append('{');
        int top = this.identifiers.length;
        int ordinal = 0;
        while (true) {
            if (ordinal == selectedOrdinal) {
                bld.append('^');
            }
            bld.append(this.identifiers[ordinal][0]);
            if (++ordinal == top) break;
            bld.append(',');
        }
        bld.append('}');
    }

    int getLongestLength() {
        return this.longestLength;
    }

    int getShortestLength() {
        return this.shortestLength;
    }

    /*
     * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    static class EnumSegment
    implements Comparable<EnumSegment>,
    Serializable {
        private static final long serialVersionUID = 4737907767214436543L;
        private final int ordinal;
        private final EnumDefinition definition;

        EnumSegment(int ordinal, EnumDefinition definition) {
            this.ordinal = ordinal;
            this.definition = definition;
        }

        /*
         * Enabled force condition propagation
         * Lifted jumps to return sites
         */
        @Override
        public int compareTo(EnumSegment other) {
            String otherId;
            if (other == this) {
                return 0;
            }
            if (this.definition == other.definition) {
                return this.ordinal - other.ordinal;
            }
            String thisId = this.definition.getIdentifier(this.ordinal);
            if (thisId.equals(otherId = other.definition.getIdentifier(other.ordinal))) {
                return 0;
            }
            int thisOrdinalInOther = other.definition.getOrdinal(thisId);
            int otherOrdinalInThis = this.definition.getOrdinal(otherId);
            if (thisOrdinalInOther >= 0) {
                if (otherOrdinalInThis < 0) return thisOrdinalInOther - other.ordinal;
                int thisOrder = this.ordinal - otherOrdinalInThis;
                int otherOrder = thisOrdinalInOther - other.ordinal;
                if (thisOrder > 0 && otherOrder > 0) {
                    return 1;
                }
                if (thisOrder >= 0 || otherOrder >= 0) return this.definition.compareTo(other.definition);
                return -1;
            }
            if (otherOrdinalInThis < 0) return this.definition.compareTo(other.definition);
            return this.ordinal - otherOrdinalInThis;
        }

        public boolean equals(Object other) {
            return other == this || other instanceof EnumSegment && this.compareTo((EnumSegment)other) == 0;
        }

        public int hashCode() {
            return (1 + this.ordinal) * 31 + this.definition.getIdentifier(this.ordinal).hashCode();
        }

        int getOrdinal() {
            return this.ordinal;
        }

        String getIdentifier() {
            return this.definition.getIdentifier(this.ordinal);
        }

        void toString(StringBuffer sb) {
            this.definition.toString(sb, this.ordinal);
        }

        private Object readResolve() {
            return this.definition.getSegment(this.ordinal);
        }
    }
}

