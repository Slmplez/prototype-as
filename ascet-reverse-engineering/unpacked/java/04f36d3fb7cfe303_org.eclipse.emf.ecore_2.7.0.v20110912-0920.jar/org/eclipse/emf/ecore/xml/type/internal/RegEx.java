/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.ecore.xml.type.internal;

import java.io.Serializable;
import java.text.CharacterIterator;
import java.util.Hashtable;
import java.util.Locale;
import java.util.ResourceBundle;
import java.util.Vector;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public final class RegEx {

    static class BMPattern {
        char[] pattern;
        int[] shiftTable;
        boolean ignoreCase;

        public BMPattern(String pat, boolean ignoreCase) {
            this(pat, 256, ignoreCase);
        }

        public BMPattern(String pat, int tableSize, boolean ignoreCase) {
            this.pattern = pat.toCharArray();
            this.shiftTable = new int[tableSize];
            this.ignoreCase = ignoreCase;
            int length = this.pattern.length;
            int i = 0;
            while (i < this.shiftTable.length) {
                this.shiftTable[i] = length;
                ++i;
            }
            i = 0;
            while (i < length) {
                int diff = length - i - 1;
                char ch = this.pattern[i];
                int index = ch % this.shiftTable.length;
                if (diff < this.shiftTable[index]) {
                    this.shiftTable[index] = diff;
                }
                if (this.ignoreCase) {
                    index = (ch = Character.toUpperCase(ch)) % this.shiftTable.length;
                    if (diff < this.shiftTable[index]) {
                        this.shiftTable[index] = diff;
                    }
                    if (diff < this.shiftTable[index = (ch = Character.toLowerCase(ch)) % this.shiftTable.length]) {
                        this.shiftTable[index] = diff;
                    }
                }
                ++i;
            }
        }

        public int matches(CharacterIterator iterator, int start, int limit) {
            if (this.ignoreCase) {
                return this.matchesIgnoreCase(iterator, start, limit);
            }
            int plength = this.pattern.length;
            if (plength == 0) {
                return start;
            }
            int index = start + plength;
            while (index <= limit) {
                char ch;
                int pindex = plength;
                int nindex = index + 1;
                while ((ch = iterator.setIndex(--index)) == this.pattern[--pindex]) {
                    if (pindex == 0) {
                        return index;
                    }
                    if (pindex > 0) continue;
                }
                if ((index += this.shiftTable[ch % this.shiftTable.length] + 1) >= nindex) continue;
                index = nindex;
            }
            return -1;
        }

        public int matches(String str, int start, int limit) {
            if (this.ignoreCase) {
                return this.matchesIgnoreCase(str, start, limit);
            }
            int plength = this.pattern.length;
            if (plength == 0) {
                return start;
            }
            int index = start + plength;
            while (index <= limit) {
                char ch;
                int pindex = plength;
                int nindex = index + 1;
                while ((ch = str.charAt(--index)) == this.pattern[--pindex]) {
                    if (pindex == 0) {
                        return index;
                    }
                    if (pindex > 0) continue;
                }
                if ((index += this.shiftTable[ch % this.shiftTable.length] + 1) >= nindex) continue;
                index = nindex;
            }
            return -1;
        }

        public int matches(char[] chars, int start, int limit) {
            if (this.ignoreCase) {
                return this.matchesIgnoreCase(chars, start, limit);
            }
            int plength = this.pattern.length;
            if (plength == 0) {
                return start;
            }
            int index = start + plength;
            while (index <= limit) {
                char ch;
                int pindex = plength;
                int nindex = index + 1;
                while ((ch = chars[--index]) == this.pattern[--pindex]) {
                    if (pindex == 0) {
                        return index;
                    }
                    if (pindex > 0) continue;
                }
                if ((index += this.shiftTable[ch % this.shiftTable.length] + 1) >= nindex) continue;
                index = nindex;
            }
            return -1;
        }

        int matchesIgnoreCase(CharacterIterator iterator, int start, int limit) {
            int plength = this.pattern.length;
            if (plength == 0) {
                return start;
            }
            int index = start + plength;
            while (index <= limit) {
                char ch2;
                char ch;
                char ch1;
                int pindex = plength;
                int nindex = index + 1;
                while ((ch1 = (ch = iterator.setIndex(--index))) == (ch2 = this.pattern[--pindex]) || (ch1 = Character.toUpperCase(ch1)) == (ch2 = Character.toUpperCase(ch2)) || Character.toLowerCase(ch1) == Character.toLowerCase(ch2)) {
                    if (pindex == 0) {
                        return index;
                    }
                    if (pindex > 0) continue;
                }
                if ((index += this.shiftTable[ch % this.shiftTable.length] + 1) >= nindex) continue;
                index = nindex;
            }
            return -1;
        }

        int matchesIgnoreCase(String text, int start, int limit) {
            int plength = this.pattern.length;
            if (plength == 0) {
                return start;
            }
            int index = start + plength;
            while (index <= limit) {
                char ch2;
                char ch;
                char ch1;
                int pindex = plength;
                int nindex = index + 1;
                while ((ch1 = (ch = text.charAt(--index))) == (ch2 = this.pattern[--pindex]) || (ch1 = Character.toUpperCase(ch1)) == (ch2 = Character.toUpperCase(ch2)) || Character.toLowerCase(ch1) == Character.toLowerCase(ch2)) {
                    if (pindex == 0) {
                        return index;
                    }
                    if (pindex > 0) continue;
                }
                if ((index += this.shiftTable[ch % this.shiftTable.length] + 1) >= nindex) continue;
                index = nindex;
            }
            return -1;
        }

        int matchesIgnoreCase(char[] chars, int start, int limit) {
            int plength = this.pattern.length;
            if (plength == 0) {
                return start;
            }
            int index = start + plength;
            while (index <= limit) {
                char ch2;
                char ch;
                char ch1;
                int pindex = plength;
                int nindex = index + 1;
                while ((ch1 = (ch = chars[--index])) == (ch2 = this.pattern[--pindex]) || (ch1 = Character.toUpperCase(ch1)) == (ch2 = Character.toUpperCase(ch2)) || Character.toLowerCase(ch1) == Character.toLowerCase(ch2)) {
                    if (pindex == 0) {
                        return index;
                    }
                    if (pindex > 0) continue;
                }
                if ((index += this.shiftTable[ch % this.shiftTable.length] + 1) >= nindex) continue;
                index = nindex;
            }
            return -1;
        }
    }

    public static class Match
    implements Cloneable {
        int[] beginpos = null;
        int[] endpos = null;
        int nofgroups = 0;
        CharacterIterator ciSource = null;
        String strSource = null;
        char[] charSource = null;

        public synchronized Object clone() {
            Match ma = new Match();
            if (this.nofgroups > 0) {
                ma.setNumberOfGroups(this.nofgroups);
                if (this.ciSource != null) {
                    ma.setSource(this.ciSource);
                }
                if (this.strSource != null) {
                    ma.setSource(this.strSource);
                }
                int i = 0;
                while (i < this.nofgroups) {
                    ma.setBeginning(i, this.getBeginning(i));
                    ma.setEnd(i, this.getEnd(i));
                    ++i;
                }
            }
            return ma;
        }

        protected void setNumberOfGroups(int n) {
            int oldn = this.nofgroups;
            this.nofgroups = n;
            if (oldn <= 0 || oldn < n || n * 2 < oldn) {
                this.beginpos = new int[n];
                this.endpos = new int[n];
            }
            int i = 0;
            while (i < n) {
                this.beginpos[i] = -1;
                this.endpos[i] = -1;
                ++i;
            }
        }

        protected void setSource(CharacterIterator ci) {
            this.ciSource = ci;
            this.strSource = null;
            this.charSource = null;
        }

        protected void setSource(String str) {
            this.ciSource = null;
            this.strSource = str;
            this.charSource = null;
        }

        protected void setSource(char[] chars) {
            this.ciSource = null;
            this.strSource = null;
            this.charSource = chars;
        }

        protected void setBeginning(int index, int v) {
            this.beginpos[index] = v;
        }

        protected void setEnd(int index, int v) {
            this.endpos[index] = v;
        }

        public int getNumberOfGroups() {
            if (this.nofgroups <= 0) {
                throw new IllegalStateException("A result is not set.");
            }
            return this.nofgroups;
        }

        public int getBeginning(int index) {
            if (this.beginpos == null) {
                throw new IllegalStateException("A result is not set.");
            }
            if (index < 0 || this.nofgroups <= index) {
                throw new IllegalArgumentException("The parameter must be less than " + this.nofgroups + ": " + index);
            }
            return this.beginpos[index];
        }

        public int getEnd(int index) {
            if (this.endpos == null) {
                throw new IllegalStateException("A result is not set.");
            }
            if (index < 0 || this.nofgroups <= index) {
                throw new IllegalArgumentException("The parameter must be less than " + this.nofgroups + ": " + index);
            }
            return this.endpos[index];
        }

        public String getCapturedText(int index) {
            if (this.beginpos == null) {
                throw new IllegalStateException("match() has never been called.");
            }
            if (index < 0 || this.nofgroups <= index) {
                throw new IllegalArgumentException("The parameter must be less than " + this.nofgroups + ": " + index);
            }
            int begin = this.beginpos[index];
            int end = this.endpos[index];
            if (begin < 0 || end < 0) {
                return null;
            }
            String ret = this.ciSource != null ? REUtil.substring(this.ciSource, begin, end) : (this.strSource != null ? this.strSource.substring(begin, end) : new String(this.charSource, begin, end - begin));
            return ret;
        }
    }

    static class Op {
        static final int DOT = 0;
        static final int CHAR = 1;
        static final int RANGE = 3;
        static final int NRANGE = 4;
        static final int ANCHOR = 5;
        static final int STRING = 6;
        static final int CLOSURE = 7;
        static final int NONGREEDYCLOSURE = 8;
        static final int QUESTION = 9;
        static final int NONGREEDYQUESTION = 10;
        static final int UNION = 11;
        static final int CAPTURE = 15;
        static final int BACKREFERENCE = 16;
        static final int LOOKAHEAD = 20;
        static final int NEGATIVELOOKAHEAD = 21;
        static final int LOOKBEHIND = 22;
        static final int NEGATIVELOOKBEHIND = 23;
        static final int INDEPENDENT = 24;
        static final int MODIFIER = 25;
        static final int CONDITION = 26;
        static int nofinstances = 0;
        static final boolean COUNT = false;
        int type;
        Op next = null;

        static Op createDot() {
            return new Op(0);
        }

        static CharOp createChar(int data) {
            return new CharOp(1, data);
        }

        static CharOp createAnchor(int data) {
            return new CharOp(5, data);
        }

        static CharOp createCapture(int number, Op next) {
            CharOp op = new CharOp(15, number);
            op.next = next;
            return op;
        }

        static UnionOp createUnion(int size) {
            return new UnionOp(11, size);
        }

        static ChildOp createClosure(int id) {
            return new ModifierOp(7, id, -1);
        }

        static ChildOp createNonGreedyClosure() {
            return new ChildOp(8);
        }

        static ChildOp createQuestion(boolean nongreedy) {
            return new ChildOp(nongreedy ? 10 : 9);
        }

        static RangeOp createRange(Token tok) {
            return new RangeOp(3, tok);
        }

        static ChildOp createLook(int type, Op next, Op branch) {
            ChildOp op = new ChildOp(type);
            op.setChild(branch);
            op.next = next;
            return op;
        }

        static CharOp createBackReference(int refno) {
            return new CharOp(16, refno);
        }

        static StringOp createString(String literal) {
            return new StringOp(6, literal);
        }

        static ChildOp createIndependent(Op next, Op branch) {
            ChildOp op = new ChildOp(24);
            op.setChild(branch);
            op.next = next;
            return op;
        }

        static ModifierOp createModifier(Op next, Op branch, int add, int mask) {
            ModifierOp op = new ModifierOp(25, add, mask);
            op.setChild(branch);
            op.next = next;
            return op;
        }

        static ConditionOp createCondition(Op next, int ref, Op conditionflow, Op yesflow, Op noflow) {
            ConditionOp op = new ConditionOp(26, ref, conditionflow, yesflow, noflow);
            op.next = next;
            return op;
        }

        protected Op(int type) {
            this.type = type;
        }

        int size() {
            return 0;
        }

        Op elementAt(int index) {
            throw new RuntimeException("Internal Error: type=" + this.type);
        }

        Op getChild() {
            throw new RuntimeException("Internal Error: type=" + this.type);
        }

        int getData() {
            throw new RuntimeException("Internal Error: type=" + this.type);
        }

        int getData2() {
            throw new RuntimeException("Internal Error: type=" + this.type);
        }

        RangeToken getToken() {
            throw new RuntimeException("Internal Error: type=" + this.type);
        }

        String getString() {
            throw new RuntimeException("Internal Error: type=" + this.type);
        }

        static class CharOp
        extends Op {
            int charData;

            CharOp(int type, int data) {
                super(type);
                this.charData = data;
            }

            int getData() {
                return this.charData;
            }
        }

        static class ChildOp
        extends Op {
            Op child;

            ChildOp(int type) {
                super(type);
            }

            void setChild(Op child) {
                this.child = child;
            }

            Op getChild() {
                return this.child;
            }
        }

        static class ConditionOp
        extends Op {
            int refNumber;
            Op condition;
            Op yes;
            Op no;

            ConditionOp(int type, int refno, Op conditionflow, Op yesflow, Op noflow) {
                super(type);
                this.refNumber = refno;
                this.condition = conditionflow;
                this.yes = yesflow;
                this.no = noflow;
            }
        }

        static class ModifierOp
        extends ChildOp {
            int v1;
            int v2;

            ModifierOp(int type, int v1, int v2) {
                super(type);
                this.v1 = v1;
                this.v2 = v2;
            }

            int getData() {
                return this.v1;
            }

            int getData2() {
                return this.v2;
            }
        }

        static class RangeOp
        extends Op {
            Token tok;

            RangeOp(int type, Token tok) {
                super(type);
                this.tok = tok;
            }

            RangeToken getToken() {
                return (RangeToken)this.tok;
            }
        }

        static class StringOp
        extends Op {
            String string;

            StringOp(int type, String literal) {
                super(type);
                this.string = literal;
            }

            String getString() {
                return this.string;
            }
        }

        static class UnionOp
        extends Op {
            Vector<Op> branches;

            UnionOp(int type, int size) {
                super(type);
                this.branches = new Vector(size);
            }

            void addElement(Op op) {
                this.branches.addElement(op);
            }

            int size() {
                return this.branches.size();
            }

            Op elementAt(int index) {
                return this.branches.elementAt(index);
            }
        }
    }

    public static class ParseException
    extends RuntimeException {
        private static final long serialVersionUID = 1L;
        int location;

        public ParseException(String mes, int location) {
            super(mes);
            this.location = location;
        }

        public int getLocation() {
            return this.location;
        }
    }

    static class ParserForXMLSchema
    extends RegexParser {
        private static Hashtable<String, Token> ranges = null;
        private static Hashtable<String, Token> ranges2 = null;
        private static final String SPACES = "\t\n\r\r  ";
        private static final String NAMECHARS = "-.0:AZ__az\u00b7\u00b7\u00c0\u00d6\u00d8\u00f6\u00f8\u0131\u0134\u013e\u0141\u0148\u014a\u017e\u0180\u01c3\u01cd\u01f0\u01f4\u01f5\u01fa\u0217\u0250\u02a8\u02bb\u02c1\u02d0\u02d1\u0300\u0345\u0360\u0361\u0386\u038a\u038c\u038c\u038e\u03a1\u03a3\u03ce\u03d0\u03d6\u03da\u03da\u03dc\u03dc\u03de\u03de\u03e0\u03e0\u03e2\u03f3\u0401\u040c\u040e\u044f\u0451\u045c\u045e\u0481\u0483\u0486\u0490\u04c4\u04c7\u04c8\u04cb\u04cc\u04d0\u04eb\u04ee\u04f5\u04f8\u04f9\u0531\u0556\u0559\u0559\u0561\u0586\u0591\u05a1\u05a3\u05b9\u05bb\u05bd\u05bf\u05bf\u05c1\u05c2\u05c4\u05c4\u05d0\u05ea\u05f0\u05f2\u0621\u063a\u0640\u0652\u0660\u0669\u0670\u06b7\u06ba\u06be\u06c0\u06ce\u06d0\u06d3\u06d5\u06e8\u06ea\u06ed\u06f0\u06f9\u0901\u0903\u0905\u0939\u093c\u094d\u0951\u0954\u0958\u0963\u0966\u096f\u0981\u0983\u0985\u098c\u098f\u0990\u0993\u09a8\u09aa\u09b0\u09b2\u09b2\u09b6\u09b9\u09bc\u09bc\u09be\u09c4\u09c7\u09c8\u09cb\u09cd\u09d7\u09d7\u09dc\u09dd\u09df\u09e3\u09e6\u09f1\u0a02\u0a02\u0a05\u0a0a\u0a0f\u0a10\u0a13\u0a28\u0a2a\u0a30\u0a32\u0a33\u0a35\u0a36\u0a38\u0a39\u0a3c\u0a3c\u0a3e\u0a42\u0a47\u0a48\u0a4b\u0a4d\u0a59\u0a5c\u0a5e\u0a5e\u0a66\u0a74\u0a81\u0a83\u0a85\u0a8b\u0a8d\u0a8d\u0a8f\u0a91\u0a93\u0aa8\u0aaa\u0ab0\u0ab2\u0ab3\u0ab5\u0ab9\u0abc\u0ac5\u0ac7\u0ac9\u0acb\u0acd\u0ae0\u0ae0\u0ae6\u0aef\u0b01\u0b03\u0b05\u0b0c\u0b0f\u0b10\u0b13\u0b28\u0b2a\u0b30\u0b32\u0b33\u0b36\u0b39\u0b3c\u0b43\u0b47\u0b48\u0b4b\u0b4d\u0b56\u0b57\u0b5c\u0b5d\u0b5f\u0b61\u0b66\u0b6f\u0b82\u0b83\u0b85\u0b8a\u0b8e\u0b90\u0b92\u0b95\u0b99\u0b9a\u0b9c\u0b9c\u0b9e\u0b9f\u0ba3\u0ba4\u0ba8\u0baa\u0bae\u0bb5\u0bb7\u0bb9\u0bbe\u0bc2\u0bc6\u0bc8\u0bca\u0bcd\u0bd7\u0bd7\u0be7\u0bef\u0c01\u0c03\u0c05\u0c0c\u0c0e\u0c10\u0c12\u0c28\u0c2a\u0c33\u0c35\u0c39\u0c3e\u0c44\u0c46\u0c48\u0c4a\u0c4d\u0c55\u0c56\u0c60\u0c61\u0c66\u0c6f\u0c82\u0c83\u0c85\u0c8c\u0c8e\u0c90\u0c92\u0ca8\u0caa\u0cb3\u0cb5\u0cb9\u0cbe\u0cc4\u0cc6\u0cc8\u0cca\u0ccd\u0cd5\u0cd6\u0cde\u0cde\u0ce0\u0ce1\u0ce6\u0cef\u0d02\u0d03\u0d05\u0d0c\u0d0e\u0d10\u0d12\u0d28\u0d2a\u0d39\u0d3e\u0d43\u0d46\u0d48\u0d4a\u0d4d\u0d57\u0d57\u0d60\u0d61\u0d66\u0d6f\u0e01\u0e2e\u0e30\u0e3a\u0e40\u0e4e\u0e50\u0e59\u0e81\u0e82\u0e84\u0e84\u0e87\u0e88\u0e8a\u0e8a\u0e8d\u0e8d\u0e94\u0e97\u0e99\u0e9f\u0ea1\u0ea3\u0ea5\u0ea5\u0ea7\u0ea7\u0eaa\u0eab\u0ead\u0eae\u0eb0\u0eb9\u0ebb\u0ebd\u0ec0\u0ec4\u0ec6\u0ec6\u0ec8\u0ecd\u0ed0\u0ed9\u0f18\u0f19\u0f20\u0f29\u0f35\u0f35\u0f37\u0f37\u0f39\u0f39\u0f3e\u0f47\u0f49\u0f69\u0f71\u0f84\u0f86\u0f8b\u0f90\u0f95\u0f97\u0f97\u0f99\u0fad\u0fb1\u0fb7\u0fb9\u0fb9\u10a0\u10c5\u10d0\u10f6\u1100\u1100\u1102\u1103\u1105\u1107\u1109\u1109\u110b\u110c\u110e\u1112\u113c\u113c\u113e\u113e\u1140\u1140\u114c\u114c\u114e\u114e\u1150\u1150\u1154\u1155\u1159\u1159\u115f\u1161\u1163\u1163\u1165\u1165\u1167\u1167\u1169\u1169\u116d\u116e\u1172\u1173\u1175\u1175\u119e\u119e\u11a8\u11a8\u11ab\u11ab\u11ae\u11af\u11b7\u11b8\u11ba\u11ba\u11bc\u11c2\u11eb\u11eb\u11f0\u11f0\u11f9\u11f9\u1e00\u1e9b\u1ea0\u1ef9\u1f00\u1f15\u1f18\u1f1d\u1f20\u1f45\u1f48\u1f4d\u1f50\u1f57\u1f59\u1f59\u1f5b\u1f5b\u1f5d\u1f5d\u1f5f\u1f7d\u1f80\u1fb4\u1fb6\u1fbc\u1fbe\u1fbe\u1fc2\u1fc4\u1fc6\u1fcc\u1fd0\u1fd3\u1fd6\u1fdb\u1fe0\u1fec\u1ff2\u1ff4\u1ff6\u1ffc\u20d0\u20dc\u20e1\u20e1\u2126\u2126\u212a\u212b\u212e\u212e\u2180\u2182\u3005\u3005\u3007\u3007\u3021\u302f\u3031\u3035\u3041\u3094\u3099\u309a\u309d\u309e\u30a1\u30fa\u30fc\u30fe\u3105\u312c\u4e00\u9fa5\uac00\ud7a3";
        private static final String LETTERS = "AZaz\u00c0\u00d6\u00d8\u00f6\u00f8\u0131\u0134\u013e\u0141\u0148\u014a\u017e\u0180\u01c3\u01cd\u01f0\u01f4\u01f5\u01fa\u0217\u0250\u02a8\u02bb\u02c1\u0386\u0386\u0388\u038a\u038c\u038c\u038e\u03a1\u03a3\u03ce\u03d0\u03d6\u03da\u03da\u03dc\u03dc\u03de\u03de\u03e0\u03e0\u03e2\u03f3\u0401\u040c\u040e\u044f\u0451\u045c\u045e\u0481\u0490\u04c4\u04c7\u04c8\u04cb\u04cc\u04d0\u04eb\u04ee\u04f5\u04f8\u04f9\u0531\u0556\u0559\u0559\u0561\u0586\u05d0\u05ea\u05f0\u05f2\u0621\u063a\u0641\u064a\u0671\u06b7\u06ba\u06be\u06c0\u06ce\u06d0\u06d3\u06d5\u06d5\u06e5\u06e6\u0905\u0939\u093d\u093d\u0958\u0961\u0985\u098c\u098f\u0990\u0993\u09a8\u09aa\u09b0\u09b2\u09b2\u09b6\u09b9\u09dc\u09dd\u09df\u09e1\u09f0\u09f1\u0a05\u0a0a\u0a0f\u0a10\u0a13\u0a28\u0a2a\u0a30\u0a32\u0a33\u0a35\u0a36\u0a38\u0a39\u0a59\u0a5c\u0a5e\u0a5e\u0a72\u0a74\u0a85\u0a8b\u0a8d\u0a8d\u0a8f\u0a91\u0a93\u0aa8\u0aaa\u0ab0\u0ab2\u0ab3\u0ab5\u0ab9\u0abd\u0abd\u0ae0\u0ae0\u0b05\u0b0c\u0b0f\u0b10\u0b13\u0b28\u0b2a\u0b30\u0b32\u0b33\u0b36\u0b39\u0b3d\u0b3d\u0b5c\u0b5d\u0b5f\u0b61\u0b85\u0b8a\u0b8e\u0b90\u0b92\u0b95\u0b99\u0b9a\u0b9c\u0b9c\u0b9e\u0b9f\u0ba3\u0ba4\u0ba8\u0baa\u0bae\u0bb5\u0bb7\u0bb9\u0c05\u0c0c\u0c0e\u0c10\u0c12\u0c28\u0c2a\u0c33\u0c35\u0c39\u0c60\u0c61\u0c85\u0c8c\u0c8e\u0c90\u0c92\u0ca8\u0caa\u0cb3\u0cb5\u0cb9\u0cde\u0cde\u0ce0\u0ce1\u0d05\u0d0c\u0d0e\u0d10\u0d12\u0d28\u0d2a\u0d39\u0d60\u0d61\u0e01\u0e2e\u0e30\u0e30\u0e32\u0e33\u0e40\u0e45\u0e81\u0e82\u0e84\u0e84\u0e87\u0e88\u0e8a\u0e8a\u0e8d\u0e8d\u0e94\u0e97\u0e99\u0e9f\u0ea1\u0ea3\u0ea5\u0ea5\u0ea7\u0ea7\u0eaa\u0eab\u0ead\u0eae\u0eb0\u0eb0\u0eb2\u0eb3\u0ebd\u0ebd\u0ec0\u0ec4\u0f40\u0f47\u0f49\u0f69\u10a0\u10c5\u10d0\u10f6\u1100\u1100\u1102\u1103\u1105\u1107\u1109\u1109\u110b\u110c\u110e\u1112\u113c\u113c\u113e\u113e\u1140\u1140\u114c\u114c\u114e\u114e\u1150\u1150\u1154\u1155\u1159\u1159\u115f\u1161\u1163\u1163\u1165\u1165\u1167\u1167\u1169\u1169\u116d\u116e\u1172\u1173\u1175\u1175\u119e\u119e\u11a8\u11a8\u11ab\u11ab\u11ae\u11af\u11b7\u11b8\u11ba\u11ba\u11bc\u11c2\u11eb\u11eb\u11f0\u11f0\u11f9\u11f9\u1e00\u1e9b\u1ea0\u1ef9\u1f00\u1f15\u1f18\u1f1d\u1f20\u1f45\u1f48\u1f4d\u1f50\u1f57\u1f59\u1f59\u1f5b\u1f5b\u1f5d\u1f5d\u1f5f\u1f7d\u1f80\u1fb4\u1fb6\u1fbc\u1fbe\u1fbe\u1fc2\u1fc4\u1fc6\u1fcc\u1fd0\u1fd3\u1fd6\u1fdb\u1fe0\u1fec\u1ff2\u1ff4\u1ff6\u1ffc\u2126\u2126\u212a\u212b\u212e\u212e\u2180\u2182\u3007\u3007\u3021\u3029\u3041\u3094\u30a1\u30fa\u3105\u312c\u4e00\u9fa5\uac00\ud7a3";
        private static final String DIGITS = "09\u0660\u0669\u06f0\u06f9\u0966\u096f\u09e6\u09ef\u0a66\u0a6f\u0ae6\u0aef\u0b66\u0b6f\u0be7\u0bef\u0c66\u0c6f\u0ce6\u0cef\u0d66\u0d6f\u0e50\u0e59\u0ed0\u0ed9\u0f20\u0f29";

        public ParserForXMLSchema() {
        }

        public ParserForXMLSchema(Locale locale) {
        }

        Token processCaret() throws ParseException {
            this.next();
            return Token.createChar(94);
        }

        Token processDollar() throws ParseException {
            this.next();
            return Token.createChar(36);
        }

        Token processLookahead() throws ParseException {
            throw this.ex("parser.process.1", this.offset);
        }

        Token processNegativelookahead() throws ParseException {
            throw this.ex("parser.process.1", this.offset);
        }

        Token processLookbehind() throws ParseException {
            throw this.ex("parser.process.1", this.offset);
        }

        Token processNegativelookbehind() throws ParseException {
            throw this.ex("parser.process.1", this.offset);
        }

        Token processBacksolidus_A() throws ParseException {
            throw this.ex("parser.process.1", this.offset);
        }

        Token processBacksolidus_Z() throws ParseException {
            throw this.ex("parser.process.1", this.offset);
        }

        Token processBacksolidus_z() throws ParseException {
            throw this.ex("parser.process.1", this.offset);
        }

        Token processBacksolidus_b() throws ParseException {
            throw this.ex("parser.process.1", this.offset);
        }

        Token processBacksolidus_B() throws ParseException {
            throw this.ex("parser.process.1", this.offset);
        }

        Token processBacksolidus_lt() throws ParseException {
            throw this.ex("parser.process.1", this.offset);
        }

        Token processBacksolidus_gt() throws ParseException {
            throw this.ex("parser.process.1", this.offset);
        }

        Token processStar(Token tok) throws ParseException {
            this.next();
            return Token.createClosure(tok);
        }

        Token processPlus(Token tok) throws ParseException {
            this.next();
            return Token.createConcat(tok, Token.createClosure(tok));
        }

        Token processQuestion(Token tok) throws ParseException {
            this.next();
            Token.UnionToken par = Token.createUnion();
            ((Token)par).addChild(tok);
            ((Token)par).addChild(Token.createEmpty());
            return par;
        }

        boolean checkQuestion(int off) {
            return false;
        }

        Token processParen() throws ParseException {
            this.next();
            Token.ParenToken tok = Token.createParen(this.parseRegex(), 0);
            if (this.read() != 7) {
                throw this.ex("parser.factor.1", this.offset - 1);
            }
            this.next();
            return tok;
        }

        Token processParen2() throws ParseException {
            throw this.ex("parser.process.1", this.offset);
        }

        Token processCondition() throws ParseException {
            throw this.ex("parser.process.1", this.offset);
        }

        Token processModifiers() throws ParseException {
            throw this.ex("parser.process.1", this.offset);
        }

        Token processIndependent() throws ParseException {
            throw this.ex("parser.process.1", this.offset);
        }

        Token processBacksolidus_c() throws ParseException {
            this.next();
            return this.getTokenForShorthand(99);
        }

        Token processBacksolidus_C() throws ParseException {
            this.next();
            return this.getTokenForShorthand(67);
        }

        Token processBacksolidus_i() throws ParseException {
            this.next();
            return this.getTokenForShorthand(105);
        }

        Token processBacksolidus_I() throws ParseException {
            this.next();
            return this.getTokenForShorthand(73);
        }

        Token processBacksolidus_g() throws ParseException {
            throw this.ex("parser.process.1", this.offset - 2);
        }

        Token processBacksolidus_X() throws ParseException {
            throw this.ex("parser.process.1", this.offset - 2);
        }

        Token processBackreference() throws ParseException {
            throw this.ex("parser.process.1", this.offset - 4);
        }

        int processCIinCharacterClass(RangeToken tok, int c) {
            tok.mergeRanges(this.getTokenForShorthand(c));
            return -1;
        }

        protected RangeToken parseCharacterClass(boolean useNrange) throws ParseException {
            int type;
            RangeToken tok;
            this.setContext(1);
            this.next();
            RangeToken base = null;
            if (this.read() == 0 && this.chardata == 94) {
                this.next();
                base = Token.createRange();
                base.addRange(0, 0x10FFFF);
                tok = Token.createRange();
            } else {
                tok = Token.createRange();
            }
            boolean firstloop = true;
            while ((type = this.read()) != 1) {
                boolean end;
                int c;
                block33: {
                    block32: {
                        if (type == 0 && this.chardata == 93 && !firstloop) {
                            if (base == null) break;
                            base.subtractRanges(tok);
                            tok = base;
                            break;
                        }
                        c = this.chardata;
                        end = false;
                        if (type != 10) break block32;
                        switch (c) {
                            case 68: 
                            case 83: 
                            case 87: 
                            case 100: 
                            case 115: 
                            case 119: {
                                tok.mergeRanges(this.getTokenForShorthand(c));
                                end = true;
                                break;
                            }
                            case 67: 
                            case 73: 
                            case 99: 
                            case 105: {
                                c = this.processCIinCharacterClass(tok, c);
                                if (c < 0) {
                                    end = true;
                                    break;
                                }
                                break block33;
                            }
                            case 80: 
                            case 112: {
                                int pstart = this.offset;
                                RangeToken tok2 = this.processBacksolidus_pP(c);
                                if (tok2 == null) {
                                    throw this.ex("parser.atom.5", pstart);
                                }
                                tok.mergeRanges(tok2);
                                end = true;
                                break;
                            }
                            default: {
                                c = this.decodeEscaped();
                                break;
                            }
                        }
                        break block33;
                    }
                    if (type == 24 && !firstloop) {
                        if (base != null) {
                            base.subtractRanges(tok);
                            tok = base;
                        }
                        RangeToken range2 = this.parseCharacterClass(false);
                        tok.subtractRanges(range2);
                        if (this.read() == 0 && this.chardata == 93) break;
                        throw this.ex("parser.cc.5", this.offset);
                    }
                }
                this.next();
                if (!end) {
                    if (type == 0) {
                        if (c == 91) {
                            throw this.ex("parser.cc.6", this.offset - 2);
                        }
                        if (c == 93) {
                            throw this.ex("parser.cc.7", this.offset - 2);
                        }
                        if (c == 45 && !firstloop && this.chardata != 93) {
                            throw this.ex("parser.cc.8", this.offset - 2);
                        }
                    }
                    if (this.read() != 0 || this.chardata != 45 || c == 45 && firstloop) {
                        tok.addRange(c, c);
                    } else {
                        this.next();
                        type = this.read();
                        if (type == 1) {
                            throw this.ex("parser.cc.2", this.offset);
                        }
                        if (type == 0 && this.chardata == 93) {
                            tok.addRange(c, c);
                            tok.addRange(45, 45);
                        } else {
                            if (type == 0 && this.chardata == 93 || type == 24) {
                                throw this.ex("parser.cc.8", this.offset - 1);
                            }
                            int rangeend = this.chardata;
                            if (type == 0) {
                                if (rangeend == 91) {
                                    throw this.ex("parser.cc.6", this.offset - 1);
                                }
                                if (rangeend == 93) {
                                    throw this.ex("parser.cc.7", this.offset - 1);
                                }
                                if (rangeend == 45) {
                                    throw this.ex("parser.cc.8", this.offset - 1);
                                }
                            } else if (type == 10) {
                                rangeend = this.decodeEscaped();
                            }
                            this.next();
                            if (c > rangeend) {
                                throw this.ex("parser.ope.3", this.offset - 1);
                            }
                            tok.addRange(c, rangeend);
                        }
                    }
                }
                firstloop = false;
            }
            if (this.read() == 1) {
                throw this.ex("parser.cc.2", this.offset);
            }
            tok.sortRanges();
            tok.compactRanges();
            this.setContext(0);
            this.next();
            return tok;
        }

        protected RangeToken parseSetOperations() throws ParseException {
            throw this.ex("parser.process.1", this.offset);
        }

        Token getTokenForShorthand(int ch) {
            switch (ch) {
                case 100: {
                    return ParserForXMLSchema.getRange("xml:isDigit", true);
                }
                case 68: {
                    return ParserForXMLSchema.getRange("xml:isDigit", false);
                }
                case 119: {
                    return ParserForXMLSchema.getRange("xml:isWord", true);
                }
                case 87: {
                    return ParserForXMLSchema.getRange("xml:isWord", false);
                }
                case 115: {
                    return ParserForXMLSchema.getRange("xml:isSpace", true);
                }
                case 83: {
                    return ParserForXMLSchema.getRange("xml:isSpace", false);
                }
                case 99: {
                    return ParserForXMLSchema.getRange("xml:isNameChar", true);
                }
                case 67: {
                    return ParserForXMLSchema.getRange("xml:isNameChar", false);
                }
                case 105: {
                    return ParserForXMLSchema.getRange("xml:isInitialNameChar", true);
                }
                case 73: {
                    return ParserForXMLSchema.getRange("xml:isInitialNameChar", false);
                }
            }
            throw new RuntimeException("Internal Error: shorthands: \\u" + Integer.toString(ch, 16));
        }

        int decodeEscaped() throws ParseException {
            if (this.read() != 10) {
                throw this.ex("parser.next.1", this.offset - 1);
            }
            int c = this.chardata;
            switch (c) {
                case 110: {
                    c = 10;
                    break;
                }
                case 114: {
                    c = 13;
                    break;
                }
                case 116: {
                    c = 9;
                    break;
                }
                case 40: 
                case 41: 
                case 42: 
                case 43: 
                case 45: 
                case 46: 
                case 63: 
                case 91: 
                case 92: 
                case 93: 
                case 94: 
                case 123: 
                case 124: 
                case 125: {
                    break;
                }
                default: {
                    throw this.ex("parser.process.1", this.offset - 2);
                }
            }
            return c;
        }

        protected static synchronized RangeToken getRange(String name, boolean positive) {
            RangeToken tok;
            if (ranges == null) {
                ranges = new Hashtable();
                ranges2 = new Hashtable();
                tok = Token.createRange();
                ParserForXMLSchema.setupRange(tok, SPACES);
                ranges.put("xml:isSpace", tok);
                ranges2.put("xml:isSpace", Token.complementRanges(tok));
                tok = Token.createRange();
                ParserForXMLSchema.setupRange(tok, DIGITS);
                ranges.put("xml:isDigit", tok);
                ranges2.put("xml:isDigit", Token.complementRanges(tok));
                tok = Token.createRange();
                ParserForXMLSchema.setupRange(tok, DIGITS);
                ranges.put("xml:isDigit", tok);
                ranges2.put("xml:isDigit", Token.complementRanges(tok));
                tok = Token.createRange();
                ParserForXMLSchema.setupRange(tok, LETTERS);
                ((Token)tok).mergeRanges(ranges.get("xml:isDigit"));
                ranges.put("xml:isWord", tok);
                ranges2.put("xml:isWord", Token.complementRanges(tok));
                tok = Token.createRange();
                ParserForXMLSchema.setupRange(tok, NAMECHARS);
                ranges.put("xml:isNameChar", tok);
                ranges2.put("xml:isNameChar", Token.complementRanges(tok));
                tok = Token.createRange();
                ParserForXMLSchema.setupRange(tok, LETTERS);
                ((Token)tok).addRange(95, 95);
                ((Token)tok).addRange(58, 58);
                ranges.put("xml:isInitialNameChar", tok);
                ranges2.put("xml:isInitialNameChar", Token.complementRanges(tok));
            }
            tok = positive ? (RangeToken)ranges.get(name) : (RangeToken)ranges2.get(name);
            return tok;
        }

        static void setupRange(Token range, String src) {
            int len = src.length();
            int i = 0;
            while (i < len) {
                range.addRange(src.charAt(i), src.charAt(i + 1));
                i += 2;
            }
        }
    }

    public static final class REUtil {
        static final int CACHESIZE = 20;
        static final RegularExpression[] regexCache = new RegularExpression[20];

        private REUtil() {
        }

        static final int composeFromSurrogates(int high, int low) {
            return 65536 + (high - 55296 << 10) + low - 56320;
        }

        static final boolean isLowSurrogate(int ch) {
            return (ch & 0xFC00) == 56320;
        }

        static final boolean isHighSurrogate(int ch) {
            return (ch & 0xFC00) == 55296;
        }

        static final String decomposeToSurrogates(int ch) {
            char[] chs = new char[]{(char)(((ch -= 65536) >> 10) + 55296), (char)((ch & 0x3FF) + 56320)};
            return new String(chs);
        }

        static final String substring(CharacterIterator iterator, int begin, int end) {
            char[] src = new char[end - begin];
            int i = 0;
            while (i < src.length) {
                src[i] = iterator.setIndex(i + begin);
                ++i;
            }
            return new String(src);
        }

        static final int getOptionValue(int ch) {
            int ret = 0;
            switch (ch) {
                case 105: {
                    ret = 2;
                    break;
                }
                case 109: {
                    ret = 8;
                    break;
                }
                case 115: {
                    ret = 4;
                    break;
                }
                case 120: {
                    ret = 16;
                    break;
                }
                case 117: {
                    ret = 32;
                    break;
                }
                case 119: {
                    ret = 64;
                    break;
                }
                case 70: {
                    ret = 256;
                    break;
                }
                case 72: {
                    ret = 128;
                    break;
                }
                case 88: {
                    ret = 512;
                    break;
                }
                case 44: {
                    ret = 1024;
                }
            }
            return ret;
        }

        static final int parseOptions(String opts) throws ParseException {
            if (opts == null) {
                return 0;
            }
            int options = 0;
            int i = 0;
            while (i < opts.length()) {
                int v = REUtil.getOptionValue(opts.charAt(i));
                if (v == 0) {
                    throw new ParseException("Unknown Option: " + opts.substring(i), -1);
                }
                options |= v;
                ++i;
            }
            return options;
        }

        static final String createOptionString(int options) {
            StringBuffer sb = new StringBuffer(9);
            if ((options & 0x100) != 0) {
                sb.append('F');
            }
            if ((options & 0x80) != 0) {
                sb.append('H');
            }
            if ((options & 0x200) != 0) {
                sb.append('X');
            }
            if ((options & 2) != 0) {
                sb.append('i');
            }
            if ((options & 8) != 0) {
                sb.append('m');
            }
            if ((options & 4) != 0) {
                sb.append('s');
            }
            if ((options & 0x20) != 0) {
                sb.append('u');
            }
            if ((options & 0x40) != 0) {
                sb.append('w');
            }
            if ((options & 0x10) != 0) {
                sb.append('x');
            }
            if ((options & 0x400) != 0) {
                sb.append(',');
            }
            return sb.toString().intern();
        }

        static String stripExtendedComment(String regex) {
            int len = regex.length();
            StringBuffer buffer = new StringBuffer(len);
            int offset = 0;
            block0: while (offset < len) {
                char ch;
                if ((ch = regex.charAt(offset++)) == '\t' || ch == '\n' || ch == '\f' || ch == '\r' || ch == ' ') continue;
                if (ch == '#') {
                    while (offset < len) {
                        if ((ch = regex.charAt(offset++)) == '\r' || ch == '\n') continue block0;
                    }
                    continue;
                }
                if (ch == '\\' && offset < len) {
                    char next = regex.charAt(offset);
                    if (next == '#' || next == '\t' || next == '\n' || next == '\f' || next == '\r' || next == ' ') {
                        buffer.append(next);
                        ++offset;
                        continue;
                    }
                    buffer.append('\\');
                    buffer.append(next);
                    ++offset;
                    continue;
                }
                buffer.append(ch);
            }
            return buffer.toString();
        }

        /*
         * Unable to fully structure code
         * Enabled force condition propagation
         * Lifted jumps to return sites
         */
        public static void main(String[] argv) {
            pattern = null;
            try {
                options = "";
                target = null;
                if (argv.length == 0) {
                    System.out.println("Error:Usage: java REUtil -i|-m|-s|-u|-w|-X regularExpression String");
                    System.exit(0);
                }
                i = 0;
                while (i < argv.length) {
                    if (argv[i].length() == 0 || argv[i].charAt(0) != '-') {
                        if (pattern == null) {
                            pattern = argv[i];
                        } else if (target == null) {
                            target = argv[i];
                        } else {
                            System.err.println("Unnecessary: " + argv[i]);
                        }
                    } else if (argv[i].equals("-i")) {
                        options = String.valueOf(options) + "i";
                    } else if (argv[i].equals("-m")) {
                        options = String.valueOf(options) + "m";
                    } else if (argv[i].equals("-s")) {
                        options = String.valueOf(options) + "s";
                    } else if (argv[i].equals("-u")) {
                        options = String.valueOf(options) + "u";
                    } else if (argv[i].equals("-w")) {
                        options = String.valueOf(options) + "w";
                    } else if (argv[i].equals("-X")) {
                        options = String.valueOf(options) + "X";
                    } else {
                        System.err.println("Unknown option: " + argv[i]);
                    }
                    ++i;
                }
                reg = new RegularExpression(pattern, options);
                System.out.println("RegularExpression: " + reg);
                match = new Match();
                reg.matches(target, match);
                i = 0;
                while (i < match.getNumberOfGroups()) {
                    if (i == 0) {
                        System.out.print("Matched range for the whole pattern: ");
                    } else {
                        System.out.print("[" + i + "]: ");
                    }
                    if (match.getBeginning(i) < 0) {
                        System.out.println("-1");
                    } else {
                        System.out.print(String.valueOf(match.getBeginning(i)) + ", " + match.getEnd(i) + ", ");
                        System.out.println("\"" + match.getCapturedText(i) + "\"");
                    }
                    ++i;
                }
                return;
            }
            catch (ParseException pe) {
                if (pattern == null) {
                    pe.printStackTrace();
                    return;
                }
                System.err.println("org.apache.xerces.utils.regex.ParseException: " + pe.getMessage());
                indent = "        ";
                System.err.println(String.valueOf(indent) + pattern);
                loc = pe.getLocation();
                if (loc < 0) return;
                System.err.print(indent);
                i = 0;
                ** while (i < loc)
            }
lbl-1000:
            // 1 sources

            {
                System.err.print("-");
                ++i;
                continue;
            }
lbl74:
            // 1 sources

            System.err.println("^");
            return;
            catch (Exception e) {
                e.printStackTrace();
            }
        }

        /*
         * WARNING - Removed try catching itself - possible behaviour change.
         */
        public static RegularExpression createRegex(String pattern, String options) throws ParseException {
            RegularExpression re = null;
            int intOptions = REUtil.parseOptions(options);
            RegularExpression[] regularExpressionArray = regexCache;
            synchronized (regexCache) {
                int i = 0;
                while (i < 20) {
                    RegularExpression cached = regexCache[i];
                    if (cached == null) {
                        i = -1;
                        break;
                    }
                    if (cached.equals(pattern, intOptions)) {
                        re = cached;
                        break;
                    }
                    ++i;
                }
                if (re != null) {
                    if (i != 0) {
                        System.arraycopy(regexCache, 0, regexCache, 1, i);
                        REUtil.regexCache[0] = re;
                    }
                } else {
                    re = new RegularExpression(pattern, options);
                    System.arraycopy(regexCache, 0, regexCache, 1, 19);
                    REUtil.regexCache[0] = re;
                }
                // ** MonitorExit[var4_4] (shouldn't be in output)
                return re;
            }
        }

        public static boolean matches(String regex, String target) throws ParseException {
            return REUtil.createRegex(regex, null).matches(target);
        }

        public static boolean matches(String regex, String options, String target) throws ParseException {
            return REUtil.createRegex(regex, options).matches(target);
        }

        public static String quoteMeta(String literal) {
            int len = literal.length();
            StringBuffer buffer = null;
            int i = 0;
            while (i < len) {
                char ch = literal.charAt(i);
                if (".*+?{[()|\\^$".indexOf(ch) >= 0) {
                    if (buffer == null) {
                        buffer = new StringBuffer(i + (len - i) * 2);
                        if (i > 0) {
                            buffer.append(literal.substring(0, i));
                        }
                    }
                    buffer.append('\\');
                    buffer.append(ch);
                } else if (buffer != null) {
                    buffer.append(ch);
                }
                ++i;
            }
            return buffer != null ? buffer.toString() : literal;
        }

        static void dumpString(String v) {
            int i = 0;
            while (i < v.length()) {
                System.out.print(Integer.toHexString(v.charAt(i)));
                System.out.print(" ");
                ++i;
            }
            System.out.println();
        }
    }

    static final class RangeToken
    extends Token
    implements Serializable {
        private static final long serialVersionUID = 1L;
        int[] ranges;
        boolean sorted;
        boolean compacted;
        RangeToken icaseCache = null;
        int[] map = null;
        int nonMapIndex;
        private static final int MAPSIZE = 256;

        RangeToken(int type) {
            super(type);
            this.setSorted(false);
        }

        protected void addRange(int start, int end) {
            int r2;
            int r1;
            this.icaseCache = null;
            if (start <= end) {
                r1 = start;
                r2 = end;
            } else {
                r1 = end;
                r2 = start;
            }
            int pos = 0;
            if (this.ranges == null) {
                this.ranges = new int[2];
                this.ranges[0] = r1;
                this.ranges[1] = r2;
                this.setSorted(true);
            } else {
                pos = this.ranges.length;
                if (this.ranges[pos - 1] + 1 == r1) {
                    this.ranges[pos - 1] = r2;
                    return;
                }
                int[] temp = new int[pos + 2];
                System.arraycopy(this.ranges, 0, temp, 0, pos);
                this.ranges = temp;
                if (this.ranges[pos - 1] >= r1) {
                    this.setSorted(false);
                }
                this.ranges[pos++] = r1;
                this.ranges[pos] = r2;
                if (!this.sorted) {
                    this.sortRanges();
                }
            }
        }

        private final boolean isSorted() {
            return this.sorted;
        }

        private final void setSorted(boolean sort) {
            this.sorted = sort;
            if (!sort) {
                this.compacted = false;
            }
        }

        private final boolean isCompacted() {
            return this.compacted;
        }

        private final void setCompacted() {
            this.compacted = true;
        }

        protected void sortRanges() {
            if (this.isSorted()) {
                return;
            }
            if (this.ranges == null) {
                return;
            }
            int i = this.ranges.length - 4;
            while (i >= 0) {
                int j = 0;
                while (j <= i) {
                    if (this.ranges[j] > this.ranges[j + 2] || this.ranges[j] == this.ranges[j + 2] && this.ranges[j + 1] > this.ranges[j + 3]) {
                        int tmp = this.ranges[j + 2];
                        this.ranges[j + 2] = this.ranges[j];
                        this.ranges[j] = tmp;
                        tmp = this.ranges[j + 3];
                        this.ranges[j + 3] = this.ranges[j + 1];
                        this.ranges[j + 1] = tmp;
                    }
                    j += 2;
                }
                i -= 2;
            }
            this.setSorted(true);
        }

        protected void compactRanges() {
            boolean DEBUG = false;
            if (this.ranges == null || this.ranges.length <= 2) {
                return;
            }
            if (this.isCompacted()) {
                return;
            }
            int base = 0;
            int target = 0;
            while (target < this.ranges.length) {
                if (base != target) {
                    this.ranges[base] = this.ranges[target++];
                    this.ranges[base + 1] = this.ranges[target++];
                } else {
                    target += 2;
                }
                int baseend = this.ranges[base + 1];
                while (target < this.ranges.length) {
                    if (baseend + 1 < this.ranges[target]) break;
                    if (baseend + 1 == this.ranges[target]) {
                        if (DEBUG) {
                            System.err.println("Token#compactRanges(): Compaction: [" + this.ranges[base] + ", " + this.ranges[base + 1] + "], [" + this.ranges[target] + ", " + this.ranges[target + 1] + "] -> [" + this.ranges[base] + ", " + this.ranges[target + 1] + "]");
                        }
                        this.ranges[base + 1] = this.ranges[target + 1];
                        baseend = this.ranges[base + 1];
                        target += 2;
                        continue;
                    }
                    if (baseend >= this.ranges[target + 1]) {
                        if (DEBUG) {
                            System.err.println("Token#compactRanges(): Compaction: [" + this.ranges[base] + ", " + this.ranges[base + 1] + "], [" + this.ranges[target] + ", " + this.ranges[target + 1] + "] -> [" + this.ranges[base] + ", " + this.ranges[base + 1] + "]");
                        }
                        target += 2;
                        continue;
                    }
                    if (baseend < this.ranges[target + 1]) {
                        if (DEBUG) {
                            System.err.println("Token#compactRanges(): Compaction: [" + this.ranges[base] + ", " + this.ranges[base + 1] + "], [" + this.ranges[target] + ", " + this.ranges[target + 1] + "] -> [" + this.ranges[base] + ", " + this.ranges[target + 1] + "]");
                        }
                        this.ranges[base + 1] = this.ranges[target + 1];
                        baseend = this.ranges[base + 1];
                        target += 2;
                        continue;
                    }
                    throw new RuntimeException("Token#compactRanges(): Internel Error: [" + this.ranges[base] + "," + this.ranges[base + 1] + "] [" + this.ranges[target] + "," + this.ranges[target + 1] + "]");
                }
                base += 2;
            }
            if (base != this.ranges.length) {
                int[] result = new int[base];
                System.arraycopy(this.ranges, 0, result, 0, base);
                this.ranges = result;
            }
            this.setCompacted();
        }

        protected void mergeRanges(Token token) {
            RangeToken tok = (RangeToken)token;
            this.sortRanges();
            tok.sortRanges();
            if (tok.ranges == null) {
                return;
            }
            this.icaseCache = null;
            this.setSorted(true);
            if (this.ranges == null) {
                this.ranges = new int[tok.ranges.length];
                System.arraycopy(tok.ranges, 0, this.ranges, 0, tok.ranges.length);
                return;
            }
            int[] result = new int[this.ranges.length + tok.ranges.length];
            int i = 0;
            int j = 0;
            int k = 0;
            while (i < this.ranges.length || j < tok.ranges.length) {
                if (i >= this.ranges.length) {
                    result[k++] = tok.ranges[j++];
                    result[k++] = tok.ranges[j++];
                    continue;
                }
                if (j >= tok.ranges.length) {
                    result[k++] = this.ranges[i++];
                    result[k++] = this.ranges[i++];
                    continue;
                }
                if (tok.ranges[j] < this.ranges[i] || tok.ranges[j] == this.ranges[i] && tok.ranges[j + 1] < this.ranges[i + 1]) {
                    result[k++] = tok.ranges[j++];
                    result[k++] = tok.ranges[j++];
                    continue;
                }
                result[k++] = this.ranges[i++];
                result[k++] = this.ranges[i++];
            }
            this.ranges = result;
        }

        protected void subtractRanges(Token token) {
            if (token.type == 5) {
                this.intersectRanges(token);
                return;
            }
            RangeToken tok = (RangeToken)token;
            if (tok.ranges == null || this.ranges == null) {
                return;
            }
            this.icaseCache = null;
            this.sortRanges();
            this.compactRanges();
            tok.sortRanges();
            tok.compactRanges();
            int[] result = new int[this.ranges.length + tok.ranges.length];
            int wp = 0;
            int src = 0;
            int sub = 0;
            while (src < this.ranges.length && sub < tok.ranges.length) {
                int srcbegin = this.ranges[src];
                int srcend = this.ranges[src + 1];
                int subbegin = tok.ranges[sub];
                int subend = tok.ranges[sub + 1];
                if (srcend < subbegin) {
                    result[wp++] = this.ranges[src++];
                    result[wp++] = this.ranges[src++];
                    continue;
                }
                if (srcend >= subbegin && srcbegin <= subend) {
                    if (subbegin <= srcbegin && srcend <= subend) {
                        src += 2;
                        continue;
                    }
                    if (subbegin <= srcbegin) {
                        this.ranges[src] = subend + 1;
                        sub += 2;
                        continue;
                    }
                    if (srcend <= subend) {
                        result[wp++] = srcbegin;
                        result[wp++] = subbegin - 1;
                        src += 2;
                        continue;
                    }
                    result[wp++] = srcbegin;
                    result[wp++] = subbegin - 1;
                    this.ranges[src] = subend + 1;
                    sub += 2;
                    continue;
                }
                if (subend < srcbegin) {
                    sub += 2;
                    continue;
                }
                throw new RuntimeException("Token#subtractRanges(): Internal Error: [" + this.ranges[src] + "," + this.ranges[src + 1] + "] - [" + tok.ranges[sub] + "," + tok.ranges[sub + 1] + "]");
            }
            while (src < this.ranges.length) {
                result[wp++] = this.ranges[src++];
                result[wp++] = this.ranges[src++];
            }
            this.ranges = new int[wp];
            System.arraycopy(result, 0, this.ranges, 0, wp);
        }

        protected void intersectRanges(Token token) {
            RangeToken tok = (RangeToken)token;
            if (tok.ranges == null || this.ranges == null) {
                return;
            }
            this.icaseCache = null;
            this.sortRanges();
            this.compactRanges();
            tok.sortRanges();
            tok.compactRanges();
            int[] result = new int[this.ranges.length + tok.ranges.length];
            int wp = 0;
            int src1 = 0;
            int src2 = 0;
            while (src1 < this.ranges.length && src2 < tok.ranges.length) {
                int src1begin = this.ranges[src1];
                int src1end = this.ranges[src1 + 1];
                int src2begin = tok.ranges[src2];
                int src2end = tok.ranges[src2 + 1];
                if (src1end < src2begin) {
                    src1 += 2;
                    continue;
                }
                if (src1end >= src2begin && src1begin <= src2end) {
                    if (src2begin <= src1begin && src1end <= src2end) {
                        result[wp++] = src1begin;
                        result[wp++] = src1end;
                        src1 += 2;
                        continue;
                    }
                    if (src2begin <= src1begin) {
                        result[wp++] = src1begin;
                        result[wp++] = src2end;
                        this.ranges[src1] = src2end + 1;
                        src2 += 2;
                        continue;
                    }
                    if (src1end <= src2end) {
                        result[wp++] = src2begin;
                        result[wp++] = src1end;
                        src1 += 2;
                        continue;
                    }
                    result[wp++] = src2begin;
                    result[wp++] = src2end;
                    this.ranges[src1] = src2end + 1;
                    continue;
                }
                if (src2end < src1begin) {
                    src2 += 2;
                    continue;
                }
                throw new RuntimeException("Token#intersectRanges(): Internal Error: [" + this.ranges[src1] + "," + this.ranges[src1 + 1] + "] & [" + tok.ranges[src2] + "," + tok.ranges[src2 + 1] + "]");
            }
            while (src1 < this.ranges.length) {
                result[wp++] = this.ranges[src1++];
                result[wp++] = this.ranges[src1++];
            }
            this.ranges = new int[wp];
            System.arraycopy(result, 0, this.ranges, 0, wp);
        }

        static Token complementRanges(Token token) {
            int last;
            if (token.type != 4 && token.type != 5) {
                throw new IllegalArgumentException("Token#complementRanges(): must be RANGE: " + token.type);
            }
            RangeToken tok = (RangeToken)token;
            tok.sortRanges();
            tok.compactRanges();
            int len = tok.ranges.length + 2;
            if (tok.ranges[0] == 0) {
                len -= 2;
            }
            if ((last = tok.ranges[tok.ranges.length - 1]) == 0x10FFFF) {
                len -= 2;
            }
            RangeToken ret = Token.createRange();
            ret.ranges = new int[len];
            int wp = 0;
            if (tok.ranges[0] > 0) {
                ret.ranges[wp++] = 0;
                ret.ranges[wp++] = tok.ranges[0] - 1;
            }
            int i = 1;
            while (i < tok.ranges.length - 2) {
                ret.ranges[wp++] = tok.ranges[i] + 1;
                ret.ranges[wp++] = tok.ranges[i + 1] - 1;
                i += 2;
            }
            if (last != 0x10FFFF) {
                ret.ranges[wp++] = last + 1;
                ret.ranges[wp] = 0x10FFFF;
            }
            ret.setCompacted();
            return ret;
        }

        synchronized RangeToken getCaseInsensitiveToken() {
            if (this.icaseCache != null) {
                return this.icaseCache;
            }
            RangeToken uppers = this.type == 4 ? Token.createRange() : Token.createNRange();
            int i = 0;
            while (i < this.ranges.length) {
                int ch = this.ranges[i];
                while (ch <= this.ranges[i + 1]) {
                    if (ch > 65535) {
                        uppers.addRange(ch, ch);
                    } else {
                        char uch = Character.toUpperCase((char)ch);
                        uppers.addRange(uch, uch);
                    }
                    ++ch;
                }
                i += 2;
            }
            RangeToken lowers = this.type == 4 ? Token.createRange() : Token.createNRange();
            int i2 = 0;
            while (i2 < uppers.ranges.length) {
                int ch = uppers.ranges[i2];
                while (ch <= uppers.ranges[i2 + 1]) {
                    if (ch > 65535) {
                        lowers.addRange(ch, ch);
                    } else {
                        char uch = Character.toUpperCase((char)ch);
                        lowers.addRange(uch, uch);
                    }
                    ++ch;
                }
                i2 += 2;
            }
            lowers.mergeRanges(uppers);
            lowers.mergeRanges(this);
            lowers.compactRanges();
            this.icaseCache = lowers;
            return lowers;
        }

        void dumpRanges() {
            System.err.print("RANGE: ");
            if (this.ranges == null) {
                System.err.println(" NULL");
                return;
            }
            int i = 0;
            while (i < this.ranges.length) {
                System.err.print("[" + this.ranges[i] + "," + this.ranges[i + 1] + "] ");
                i += 2;
            }
            System.err.println("");
        }

        boolean match(int ch) {
            boolean ret;
            if (this.map == null) {
                this.createMap();
            }
            if (this.type == 4) {
                if (ch < 256) {
                    return (this.map[ch / 32] & 1 << (ch & 0x1F)) != 0;
                }
                ret = false;
                int i = this.nonMapIndex;
                while (i < this.ranges.length) {
                    if (this.ranges[i] <= ch && ch <= this.ranges[i + 1]) {
                        return true;
                    }
                    i += 2;
                }
            } else {
                if (ch < 256) {
                    return (this.map[ch / 32] & 1 << (ch & 0x1F)) == 0;
                }
                ret = true;
                int i = this.nonMapIndex;
                while (i < this.ranges.length) {
                    if (this.ranges[i] <= ch && ch <= this.ranges[i + 1]) {
                        return false;
                    }
                    i += 2;
                }
            }
            return ret;
        }

        private void createMap() {
            int asize = 8;
            this.map = new int[asize];
            this.nonMapIndex = this.ranges.length;
            int i = 0;
            while (i < asize) {
                this.map[i] = 0;
                ++i;
            }
            i = 0;
            while (i < this.ranges.length) {
                int s = this.ranges[i];
                int e = this.ranges[i + 1];
                if (s < 256) {
                    int j = s;
                    while (j <= e && j < 256) {
                        int n = j / 32;
                        this.map[n] = this.map[n] | 1 << (j & 0x1F);
                        ++j;
                    }
                } else {
                    this.nonMapIndex = i;
                    break;
                }
                if (e >= 256) {
                    this.nonMapIndex = i;
                    break;
                }
                i += 2;
            }
        }

        public String toString(int options) {
            String ret;
            if (this.type == 4) {
                if (this == Token.token_dot) {
                    ret = ".";
                } else if (this == Token.token_0to9) {
                    ret = "\\d";
                } else if (this == Token.token_wordchars) {
                    ret = "\\w";
                } else if (this == Token.token_spaces) {
                    ret = "\\s";
                } else {
                    StringBuffer sb = new StringBuffer();
                    sb.append("[");
                    int i = 0;
                    while (i < this.ranges.length) {
                        if ((options & 0x400) != 0 && i > 0) {
                            sb.append(",");
                        }
                        if (this.ranges[i] == this.ranges[i + 1]) {
                            sb.append(RangeToken.escapeCharInCharClass(this.ranges[i]));
                        } else {
                            sb.append(RangeToken.escapeCharInCharClass(this.ranges[i]));
                            sb.append('-');
                            sb.append(RangeToken.escapeCharInCharClass(this.ranges[i + 1]));
                        }
                        i += 2;
                    }
                    sb.append("]");
                    ret = sb.toString();
                }
            } else if (this == Token.token_not_0to9) {
                ret = "\\D";
            } else if (this == Token.token_not_wordchars) {
                ret = "\\W";
            } else if (this == Token.token_not_spaces) {
                ret = "\\S";
            } else {
                StringBuffer sb = new StringBuffer();
                sb.append("[^");
                int i = 0;
                while (i < this.ranges.length) {
                    if ((options & 0x400) != 0 && i > 0) {
                        sb.append(",");
                    }
                    if (this.ranges[i] == this.ranges[i + 1]) {
                        sb.append(RangeToken.escapeCharInCharClass(this.ranges[i]));
                    } else {
                        sb.append(RangeToken.escapeCharInCharClass(this.ranges[i]));
                        sb.append('-');
                        sb.append(RangeToken.escapeCharInCharClass(this.ranges[i + 1]));
                    }
                    i += 2;
                }
                sb.append("]");
                ret = sb.toString();
            }
            return ret;
        }

        private static String escapeCharInCharClass(int ch) {
            String ret;
            switch (ch) {
                case 44: 
                case 45: 
                case 91: 
                case 92: 
                case 93: 
                case 94: {
                    ret = "\\" + (char)ch;
                    break;
                }
                case 12: {
                    ret = "\\f";
                    break;
                }
                case 10: {
                    ret = "\\n";
                    break;
                }
                case 13: {
                    ret = "\\r";
                    break;
                }
                case 9: {
                    ret = "\\t";
                    break;
                }
                case 27: {
                    ret = "\\e";
                    break;
                }
                default: {
                    if (ch < 32) {
                        String pre = "0" + Integer.toHexString(ch);
                        ret = "\\x" + pre.substring(pre.length() - 2, pre.length());
                        break;
                    }
                    if (ch >= 65536) {
                        String pre = "0" + Integer.toHexString(ch);
                        ret = "\\v" + pre.substring(pre.length() - 6, pre.length());
                        break;
                    }
                    ret = "" + (char)ch;
                }
            }
            return ret;
        }
    }

    static class RegexParser {
        static final int T_CHAR = 0;
        static final int T_EOF = 1;
        static final int T_OR = 2;
        static final int T_STAR = 3;
        static final int T_PLUS = 4;
        static final int T_QUESTION = 5;
        static final int T_LPAREN = 6;
        static final int T_RPAREN = 7;
        static final int T_DOT = 8;
        static final int T_LBRACKET = 9;
        static final int T_BACKSOLIDUS = 10;
        static final int T_CARET = 11;
        static final int T_DOLLAR = 12;
        static final int T_LPAREN2 = 13;
        static final int T_LOOKAHEAD = 14;
        static final int T_NEGATIVELOOKAHEAD = 15;
        static final int T_LOOKBEHIND = 16;
        static final int T_NEGATIVELOOKBEHIND = 17;
        static final int T_INDEPENDENT = 18;
        static final int T_SET_OPERATIONS = 19;
        static final int T_POSIX_CHARCLASS_START = 20;
        static final int T_COMMENT = 21;
        static final int T_MODIFIERS = 22;
        static final int T_CONDITION = 23;
        static final int T_XMLSCHEMA_CC_SUBTRACTION = 24;
        int offset;
        String regex;
        int regexlen;
        int options;
        ResourceBundle resources;
        int chardata;
        int nexttoken;
        protected static final int S_NORMAL = 0;
        protected static final int S_INBRACKETS = 1;
        protected static final int S_INXBRACKETS = 2;
        int context = 0;
        int parennumber = 1;
        boolean hasBackReferences;
        Vector<ReferencePosition> references = null;

        public RegexParser() {
        }

        public RegexParser(Locale locale) {
        }

        public void setLocale(Locale locale) {
        }

        final ParseException ex(String key, int loc) {
            return new ParseException(EcorePlugin.INSTANCE.getString(key), loc);
        }

        private final boolean isSet(int flag) {
            return (this.options & flag) == flag;
        }

        synchronized Token parse(String regex, int options) throws ParseException {
            this.options = options;
            this.offset = 0;
            this.setContext(0);
            this.parennumber = 1;
            this.hasBackReferences = false;
            this.regex = regex;
            if (this.isSet(16)) {
                this.regex = REUtil.stripExtendedComment(this.regex);
            }
            this.regexlen = this.regex.length();
            this.next();
            Token ret = this.parseRegex();
            if (this.offset != this.regexlen) {
                throw this.ex("parser.parse.1", this.offset);
            }
            if (this.references != null) {
                int i = 0;
                while (i < this.references.size()) {
                    ReferencePosition position = this.references.elementAt(i);
                    if (this.parennumber <= position.refNumber) {
                        throw this.ex("parser.parse.2", position.position);
                    }
                    ++i;
                }
                this.references.removeAllElements();
            }
            return ret;
        }

        protected final void setContext(int con) {
            this.context = con;
        }

        final int read() {
            return this.nexttoken;
        }

        final void next() {
            int ret;
            if (this.offset >= this.regexlen) {
                this.chardata = -1;
                this.nexttoken = 1;
                return;
            }
            char ch = this.regex.charAt(this.offset++);
            this.chardata = ch;
            if (this.context == 1) {
                int ret2;
                switch (ch) {
                    case '\\': {
                        ret2 = 10;
                        if (this.offset >= this.regexlen) {
                            throw this.ex("parser.next.1", this.offset - 1);
                        }
                        this.chardata = this.regex.charAt(this.offset++);
                        break;
                    }
                    case '-': {
                        if (this.isSet(512) && this.offset < this.regexlen && this.regex.charAt(this.offset) == '[') {
                            ++this.offset;
                            ret2 = 24;
                            break;
                        }
                        ret2 = 0;
                        break;
                    }
                    case '[': {
                        if (!this.isSet(512) && this.offset < this.regexlen && this.regex.charAt(this.offset) == ':') {
                            ++this.offset;
                            ret2 = 20;
                            break;
                        }
                    }
                    default: {
                        char low;
                        if (REUtil.isHighSurrogate(ch) && this.offset < this.regexlen && REUtil.isLowSurrogate(low = this.regex.charAt(this.offset))) {
                            this.chardata = REUtil.composeFromSurrogates(ch, low);
                            ++this.offset;
                        }
                        ret2 = 0;
                    }
                }
                this.nexttoken = ret2;
                return;
            }
            block5 : switch (ch) {
                case '|': {
                    ret = 2;
                    break;
                }
                case '*': {
                    ret = 3;
                    break;
                }
                case '+': {
                    ret = 4;
                    break;
                }
                case '?': {
                    ret = 5;
                    break;
                }
                case ')': {
                    ret = 7;
                    break;
                }
                case '.': {
                    ret = 8;
                    break;
                }
                case '[': {
                    ret = 9;
                    break;
                }
                case '^': {
                    ret = 11;
                    break;
                }
                case '$': {
                    ret = 12;
                    break;
                }
                case '(': {
                    ret = 6;
                    if (this.offset >= this.regexlen || this.regex.charAt(this.offset) != '?') break;
                    if (++this.offset >= this.regexlen) {
                        throw this.ex("parser.next.2", this.offset - 1);
                    }
                    ch = this.regex.charAt(this.offset++);
                    switch (ch) {
                        case ':': {
                            ret = 13;
                            break block5;
                        }
                        case '=': {
                            ret = 14;
                            break block5;
                        }
                        case '!': {
                            ret = 15;
                            break block5;
                        }
                        case '[': {
                            ret = 19;
                            break block5;
                        }
                        case '>': {
                            ret = 18;
                            break block5;
                        }
                        case '<': {
                            if (this.offset >= this.regexlen) {
                                throw this.ex("parser.next.2", this.offset - 3);
                            }
                            if ((ch = this.regex.charAt(this.offset++)) == '=') {
                                ret = 16;
                                break block5;
                            }
                            if (ch == '!') {
                                ret = 17;
                                break block5;
                            }
                            throw this.ex("parser.next.3", this.offset - 3);
                        }
                        case '#': {
                            while (this.offset < this.regexlen) {
                                if ((ch = this.regex.charAt(this.offset++)) == ')') break;
                            }
                            if (ch != ')') {
                                throw this.ex("parser.next.4", this.offset - 1);
                            }
                            ret = 21;
                            break block5;
                        }
                    }
                    if (ch == '-' || 'a' <= ch && ch <= 'z' || 'A' <= ch && ch <= 'Z') {
                        --this.offset;
                        ret = 22;
                        break;
                    }
                    if (ch == '(') {
                        ret = 23;
                        break;
                    }
                    throw this.ex("parser.next.2", this.offset - 2);
                }
                case '\\': {
                    ret = 10;
                    if (this.offset >= this.regexlen) {
                        throw this.ex("parser.next.1", this.offset - 1);
                    }
                    this.chardata = this.regex.charAt(this.offset++);
                    break;
                }
                default: {
                    ret = 0;
                }
            }
            this.nexttoken = ret;
        }

        Token parseRegex() throws ParseException {
            Token tok = this.parseTerm();
            Token.UnionToken parent = null;
            while (this.read() == 2) {
                this.next();
                if (parent == null) {
                    parent = Token.createUnion();
                    ((Token)parent).addChild(tok);
                    tok = parent;
                }
                tok.addChild(this.parseTerm());
            }
            return tok;
        }

        Token parseTerm() throws ParseException {
            int ch = this.read();
            if (ch == 2 || ch == 7 || ch == 1) {
                return Token.createEmpty();
            }
            Token tok = this.parseFactor();
            Token.UnionToken concat = null;
            while ((ch = this.read()) != 2 && ch != 7 && ch != 1) {
                if (concat == null) {
                    concat = Token.createConcat();
                    ((Token)concat).addChild(tok);
                    tok = concat;
                }
                ((Token)concat).addChild(this.parseFactor());
            }
            return tok;
        }

        Token processCaret() throws ParseException {
            this.next();
            return Token.token_linebeginning;
        }

        Token processDollar() throws ParseException {
            this.next();
            return Token.token_lineend;
        }

        Token processLookahead() throws ParseException {
            this.next();
            Token.ParenToken tok = Token.createLook(20, this.parseRegex());
            if (this.read() != 7) {
                throw this.ex("parser.factor.1", this.offset - 1);
            }
            this.next();
            return tok;
        }

        Token processNegativelookahead() throws ParseException {
            this.next();
            Token.ParenToken tok = Token.createLook(21, this.parseRegex());
            if (this.read() != 7) {
                throw this.ex("parser.factor.1", this.offset - 1);
            }
            this.next();
            return tok;
        }

        Token processLookbehind() throws ParseException {
            this.next();
            Token.ParenToken tok = Token.createLook(22, this.parseRegex());
            if (this.read() != 7) {
                throw this.ex("parser.factor.1", this.offset - 1);
            }
            this.next();
            return tok;
        }

        Token processNegativelookbehind() throws ParseException {
            this.next();
            Token.ParenToken tok = Token.createLook(23, this.parseRegex());
            if (this.read() != 7) {
                throw this.ex("parser.factor.1", this.offset - 1);
            }
            this.next();
            return tok;
        }

        Token processBacksolidus_A() throws ParseException {
            this.next();
            return Token.token_stringbeginning;
        }

        Token processBacksolidus_Z() throws ParseException {
            this.next();
            return Token.token_stringend2;
        }

        Token processBacksolidus_z() throws ParseException {
            this.next();
            return Token.token_stringend;
        }

        Token processBacksolidus_b() throws ParseException {
            this.next();
            return Token.token_wordedge;
        }

        Token processBacksolidus_B() throws ParseException {
            this.next();
            return Token.token_not_wordedge;
        }

        Token processBacksolidus_lt() throws ParseException {
            this.next();
            return Token.token_wordbeginning;
        }

        Token processBacksolidus_gt() throws ParseException {
            this.next();
            return Token.token_wordend;
        }

        Token processStar(Token tok) throws ParseException {
            this.next();
            if (this.read() == 5) {
                this.next();
                return Token.createNGClosure(tok);
            }
            return Token.createClosure(tok);
        }

        Token processPlus(Token tok) throws ParseException {
            this.next();
            if (this.read() == 5) {
                this.next();
                return Token.createConcat(tok, Token.createNGClosure(tok));
            }
            return Token.createConcat(tok, Token.createClosure(tok));
        }

        Token processQuestion(Token tok) throws ParseException {
            this.next();
            Token.UnionToken par = Token.createUnion();
            if (this.read() == 5) {
                this.next();
                ((Token)par).addChild(Token.createEmpty());
                ((Token)par).addChild(tok);
            } else {
                ((Token)par).addChild(tok);
                ((Token)par).addChild(Token.createEmpty());
            }
            return par;
        }

        boolean checkQuestion(int off) {
            return off < this.regexlen && this.regex.charAt(off) == '?';
        }

        Token processParen() throws ParseException {
            this.next();
            int p = this.parennumber++;
            Token.ParenToken tok = Token.createParen(this.parseRegex(), p);
            if (this.read() != 7) {
                throw this.ex("parser.factor.1", this.offset - 1);
            }
            this.next();
            return tok;
        }

        Token processParen2() throws ParseException {
            this.next();
            Token.ParenToken tok = Token.createParen(this.parseRegex(), 0);
            if (this.read() != 7) {
                throw this.ex("parser.factor.1", this.offset - 1);
            }
            this.next();
            return tok;
        }

        Token processCondition() throws ParseException {
            if (this.offset + 1 >= this.regexlen) {
                throw this.ex("parser.factor.4", this.offset);
            }
            int refno = -1;
            Token condition = null;
            char ch = this.regex.charAt(this.offset);
            if ('1' <= ch && ch <= '9') {
                refno = ch - 48;
                this.hasBackReferences = true;
                if (this.references == null) {
                    this.references = new Vector();
                }
                this.references.addElement(new ReferencePosition(refno, this.offset));
                ++this.offset;
                if (this.regex.charAt(this.offset) != ')') {
                    throw this.ex("parser.factor.1", this.offset);
                }
                ++this.offset;
            } else {
                if (ch == '?') {
                    --this.offset;
                }
                this.next();
                condition = this.parseFactor();
                switch (condition.type) {
                    case 20: 
                    case 21: 
                    case 22: 
                    case 23: {
                        break;
                    }
                    case 8: {
                        if (this.read() == 7) break;
                        throw this.ex("parser.factor.1", this.offset - 1);
                    }
                    default: {
                        throw this.ex("parser.factor.5", this.offset);
                    }
                }
            }
            this.next();
            Token yesPattern = this.parseRegex();
            Token noPattern = null;
            if (yesPattern.type == 2) {
                if (yesPattern.size() != 2) {
                    throw this.ex("parser.factor.6", this.offset);
                }
                noPattern = yesPattern.getChild(1);
                yesPattern = yesPattern.getChild(0);
            }
            if (this.read() != 7) {
                throw this.ex("parser.factor.1", this.offset - 1);
            }
            this.next();
            return Token.createCondition(refno, condition, yesPattern, noPattern);
        }

        Token processModifiers() throws ParseException {
            Token.ModifierToken tok;
            int v;
            int add = 0;
            int mask = 0;
            int ch = -1;
            while (this.offset < this.regexlen) {
                ch = this.regex.charAt(this.offset);
                v = REUtil.getOptionValue(ch);
                if (v == 0) break;
                add |= v;
                ++this.offset;
            }
            if (this.offset >= this.regexlen) {
                throw this.ex("parser.factor.2", this.offset - 1);
            }
            if (ch == 45) {
                ++this.offset;
                while (this.offset < this.regexlen) {
                    ch = this.regex.charAt(this.offset);
                    v = REUtil.getOptionValue(ch);
                    if (v == 0) break;
                    mask |= v;
                    ++this.offset;
                }
                if (this.offset >= this.regexlen) {
                    throw this.ex("parser.factor.2", this.offset - 1);
                }
            }
            if (ch == 58) {
                ++this.offset;
                this.next();
                tok = Token.createModifierGroup(this.parseRegex(), add, mask);
                if (this.read() != 7) {
                    throw this.ex("parser.factor.1", this.offset - 1);
                }
                this.next();
            } else if (ch == 41) {
                ++this.offset;
                this.next();
                tok = Token.createModifierGroup(this.parseRegex(), add, mask);
            } else {
                throw this.ex("parser.factor.3", this.offset);
            }
            return tok;
        }

        Token processIndependent() throws ParseException {
            this.next();
            Token.ParenToken tok = Token.createLook(24, this.parseRegex());
            if (this.read() != 7) {
                throw this.ex("parser.factor.1", this.offset - 1);
            }
            this.next();
            return tok;
        }

        Token processBacksolidus_c() throws ParseException {
            char ch2;
            if (this.offset >= this.regexlen || ((ch2 = this.regex.charAt(this.offset++)) & 0xFFE0) != 64) {
                throw this.ex("parser.atom.1", this.offset - 1);
            }
            this.next();
            return Token.createChar(ch2 - 64);
        }

        Token processBacksolidus_C() throws ParseException {
            throw this.ex("parser.process.1", this.offset);
        }

        Token processBacksolidus_i() throws ParseException {
            Token.CharToken tok = Token.createChar(105);
            this.next();
            return tok;
        }

        Token processBacksolidus_I() throws ParseException {
            throw this.ex("parser.process.1", this.offset);
        }

        Token processBacksolidus_g() throws ParseException {
            this.next();
            return Token.getGraphemePattern();
        }

        Token processBacksolidus_X() throws ParseException {
            this.next();
            return Token.getCombiningCharacterSequence();
        }

        Token processBackreference() throws ParseException {
            int refnum = this.chardata - 48;
            Token.StringToken tok = Token.createBackReference(refnum);
            this.hasBackReferences = true;
            if (this.references == null) {
                this.references = new Vector();
            }
            this.references.addElement(new ReferencePosition(refnum, this.offset - 2));
            this.next();
            return tok;
        }

        /*
         * Unable to fully structure code
         * Enabled force condition propagation
         * Lifted jumps to return sites
         */
        Token parseFactor() throws ParseException {
            ch = this.read();
            switch (ch) {
                case 11: {
                    return this.processCaret();
                }
                case 12: {
                    return this.processDollar();
                }
                case 14: {
                    return this.processLookahead();
                }
                case 15: {
                    return this.processNegativelookahead();
                }
                case 16: {
                    return this.processLookbehind();
                }
                case 17: {
                    return this.processNegativelookbehind();
                }
                case 21: {
                    this.next();
                    return Token.createEmpty();
                }
                case 10: {
                    switch (this.chardata) {
                        case 65: {
                            return this.processBacksolidus_A();
                        }
                        case 90: {
                            return this.processBacksolidus_Z();
                        }
                        case 122: {
                            return this.processBacksolidus_z();
                        }
                        case 98: {
                            return this.processBacksolidus_b();
                        }
                        case 66: {
                            return this.processBacksolidus_B();
                        }
                        case 60: {
                            return this.processBacksolidus_lt();
                        }
                        case 62: {
                            return this.processBacksolidus_gt();
                        }
                    }
                }
            }
            tok = this.parseAtom();
            ch = this.read();
            switch (ch) {
                case 3: {
                    return this.processStar(tok);
                }
                case 4: {
                    return this.processPlus(tok);
                }
                case 5: {
                    return this.processQuestion(tok);
                }
                case 0: {
                    if (this.chardata != 123 || this.offset >= this.regexlen) return tok;
                    off = this.offset;
                    min = 0;
                    max = -1;
                    v0 = this.regex.charAt(off++);
                    ch = v0;
                    if (v0 < '0' || ch > 57) throw this.ex("parser.quantifier.1", this.offset);
                    min = ch - 48;
                    if (true) ** GOTO lbl56
                    do {
                        if ((min = min * 10 + ch - 48) < 0) {
                            throw this.ex("parser.quantifier.5", this.offset);
                        }
lbl56:
                        // 3 sources

                        if (off >= this.regexlen) break;
                        v1 = this.regex.charAt(off++);
                        ch = v1;
                    } while (v1 >= '0' && ch <= 57);
                    max = min;
                    if (ch != 44) ** GOTO lbl80
                    if (off >= this.regexlen) {
                        throw this.ex("parser.quantifier.3", this.offset);
                    }
                    v2 = this.regex.charAt(off++);
                    ch = v2;
                    if (v2 < '0' || ch > 57) ** GOTO lbl79
                    max = ch - 48;
                    if (true) ** GOTO lbl72
                    do {
                        if ((max = max * 10 + ch - 48) < 0) {
                            throw this.ex("parser.quantifier.5", this.offset);
                        }
lbl72:
                        // 3 sources

                        if (off >= this.regexlen) break;
                        v3 = this.regex.charAt(off++);
                        ch = v3;
                    } while (v3 >= '0' && ch <= 57);
                    if (min > max) {
                        throw this.ex("parser.quantifier.4", this.offset);
                    }
                    ** GOTO lbl80
lbl79:
                    // 1 sources

                    max = -1;
lbl80:
                    // 3 sources

                    if (ch != 125) {
                        throw this.ex("parser.quantifier.2", this.offset);
                    }
                    if (this.checkQuestion(off)) {
                        tok = Token.createNGClosure(tok);
                        this.offset = off + 1;
                    } else {
                        tok = Token.createClosure(tok);
                        this.offset = off;
                    }
                    tok.setMin(min);
                    tok.setMax(max);
                    this.next();
                }
            }
            return tok;
        }

        Token parseAtom() throws ParseException {
            int ch = this.read();
            Token tok = null;
            switch (ch) {
                case 6: {
                    return this.processParen();
                }
                case 13: {
                    return this.processParen2();
                }
                case 23: {
                    return this.processCondition();
                }
                case 22: {
                    return this.processModifiers();
                }
                case 18: {
                    return this.processIndependent();
                }
                case 8: {
                    this.next();
                    tok = Token.token_dot;
                    break;
                }
                case 9: {
                    return this.parseCharacterClass(true);
                }
                case 19: {
                    return this.parseSetOperations();
                }
                case 10: {
                    switch (this.chardata) {
                        case 68: 
                        case 83: 
                        case 87: 
                        case 100: 
                        case 115: 
                        case 119: {
                            tok = this.getTokenForShorthand(this.chardata);
                            this.next();
                            return tok;
                        }
                        case 101: 
                        case 102: 
                        case 110: 
                        case 114: 
                        case 116: 
                        case 117: 
                        case 118: 
                        case 120: {
                            int ch2 = this.decodeEscaped();
                            if (ch2 < 65536) {
                                tok = Token.createChar(ch2);
                                break;
                            }
                            tok = Token.createString(REUtil.decomposeToSurrogates(ch2));
                            break;
                        }
                        case 99: {
                            return this.processBacksolidus_c();
                        }
                        case 67: {
                            return this.processBacksolidus_C();
                        }
                        case 105: {
                            return this.processBacksolidus_i();
                        }
                        case 73: {
                            return this.processBacksolidus_I();
                        }
                        case 103: {
                            return this.processBacksolidus_g();
                        }
                        case 88: {
                            return this.processBacksolidus_X();
                        }
                        case 49: 
                        case 50: 
                        case 51: 
                        case 52: 
                        case 53: 
                        case 54: 
                        case 55: 
                        case 56: 
                        case 57: {
                            return this.processBackreference();
                        }
                        case 80: 
                        case 112: {
                            int pstart = this.offset;
                            tok = this.processBacksolidus_pP(this.chardata);
                            if (tok != null) break;
                            throw this.ex("parser.atom.5", pstart);
                        }
                        default: {
                            tok = Token.createChar(this.chardata);
                        }
                    }
                    this.next();
                    break;
                }
                case 0: {
                    if (this.chardata == 93 || this.chardata == 123 || this.chardata == 125) {
                        throw this.ex("parser.atom.4", this.offset - 1);
                    }
                    tok = Token.createChar(this.chardata);
                    int high = this.chardata;
                    this.next();
                    if (!REUtil.isHighSurrogate(high) || this.read() != 0 || !REUtil.isLowSurrogate(this.chardata)) break;
                    char[] sur = new char[]{(char)high, (char)this.chardata};
                    tok = Token.createParen(Token.createString(new String(sur)), 0);
                    this.next();
                    break;
                }
                default: {
                    throw this.ex("parser.atom.4", this.offset - 1);
                }
            }
            return tok;
        }

        protected RangeToken processBacksolidus_pP(int c) throws ParseException {
            this.next();
            if (this.read() != 0 || this.chardata != 123) {
                throw this.ex("parser.atom.2", this.offset - 1);
            }
            boolean positive = c == 112;
            int namestart = this.offset;
            int nameend = this.regex.indexOf(125, namestart);
            if (nameend < 0) {
                throw this.ex("parser.atom.3", this.offset);
            }
            String pname = this.regex.substring(namestart, nameend);
            this.offset = nameend + 1;
            return Token.getRange(pname, positive, this.isSet(512));
        }

        int processCIinCharacterClass(RangeToken tok, int c) {
            return this.decodeEscaped();
        }

        protected RangeToken parseCharacterClass(boolean useNrange) throws ParseException {
            int type;
            RangeToken tok;
            this.setContext(1);
            this.next();
            RangeToken base = null;
            if (this.read() == 0 && this.chardata == 94) {
                this.next();
                if (useNrange) {
                    tok = Token.createNRange();
                } else {
                    base = Token.createRange();
                    base.addRange(0, 0x10FFFF);
                    tok = Token.createRange();
                }
            } else {
                tok = Token.createRange();
            }
            boolean firstloop = true;
            while ((type = this.read()) != 1) {
                boolean end;
                int c;
                block27: {
                    block26: {
                        if (type == 0 && this.chardata == 93 && !firstloop) break;
                        firstloop = false;
                        c = this.chardata;
                        end = false;
                        if (type != 10) break block26;
                        switch (c) {
                            case 68: 
                            case 83: 
                            case 87: 
                            case 100: 
                            case 115: 
                            case 119: {
                                tok.mergeRanges(this.getTokenForShorthand(c));
                                end = true;
                                break;
                            }
                            case 67: 
                            case 73: 
                            case 99: 
                            case 105: {
                                c = this.processCIinCharacterClass(tok, c);
                                if (c < 0) {
                                    end = true;
                                    break;
                                }
                                break block27;
                            }
                            case 80: 
                            case 112: {
                                int pstart = this.offset;
                                RangeToken tok2 = this.processBacksolidus_pP(c);
                                if (tok2 == null) {
                                    throw this.ex("parser.atom.5", pstart);
                                }
                                tok.mergeRanges(tok2);
                                end = true;
                                break;
                            }
                            default: {
                                c = this.decodeEscaped();
                                break;
                            }
                        }
                        break block27;
                    }
                    if (type == 20) {
                        String name;
                        RangeToken range;
                        int nameend = this.regex.indexOf(58, this.offset);
                        if (nameend < 0) {
                            throw this.ex("parser.cc.1", this.offset);
                        }
                        boolean positive = true;
                        if (this.regex.charAt(this.offset) == '^') {
                            ++this.offset;
                            positive = false;
                        }
                        if ((range = Token.getRange(name = this.regex.substring(this.offset, nameend), positive, this.isSet(512))) == null) {
                            throw this.ex("parser.cc.3", this.offset);
                        }
                        tok.mergeRanges(range);
                        end = true;
                        if (nameend + 1 >= this.regexlen || this.regex.charAt(nameend + 1) != ']') {
                            throw this.ex("parser.cc.1", nameend);
                        }
                        this.offset = nameend + 2;
                    }
                }
                this.next();
                if (!end) {
                    if (this.read() != 0 || this.chardata != 45) {
                        tok.addRange(c, c);
                    } else {
                        this.next();
                        type = this.read();
                        if (type == 1) {
                            throw this.ex("parser.cc.2", this.offset);
                        }
                        if (type == 0 && this.chardata == 93) {
                            tok.addRange(c, c);
                            tok.addRange(45, 45);
                        } else {
                            int rangeend = this.chardata;
                            if (type == 10) {
                                rangeend = this.decodeEscaped();
                            }
                            this.next();
                            tok.addRange(c, rangeend);
                        }
                    }
                }
                if (!this.isSet(1024) || this.read() != 0 || this.chardata != 44) continue;
                this.next();
            }
            if (this.read() == 1) {
                throw this.ex("parser.cc.2", this.offset);
            }
            if (base != null) {
                base.subtractRanges(tok);
                tok = base;
            }
            tok.sortRanges();
            tok.compactRanges();
            this.setContext(0);
            this.next();
            return tok;
        }

        protected RangeToken parseSetOperations() throws ParseException {
            int type;
            RangeToken tok = this.parseCharacterClass(false);
            while ((type = this.read()) != 7) {
                int ch = this.chardata;
                if (type == 0 && (ch == 45 || ch == 38) || type == 4) {
                    this.next();
                    if (this.read() != 9) {
                        throw this.ex("parser.ope.1", this.offset - 1);
                    }
                    RangeToken t2 = this.parseCharacterClass(false);
                    if (type == 4) {
                        tok.mergeRanges(t2);
                        continue;
                    }
                    if (ch == 45) {
                        tok.subtractRanges(t2);
                        continue;
                    }
                    if (ch == 38) {
                        tok.intersectRanges(t2);
                        continue;
                    }
                    throw new RuntimeException("ASSERT");
                }
                throw this.ex("parser.ope.2", this.offset - 1);
            }
            this.next();
            return tok;
        }

        Token getTokenForShorthand(int ch) {
            Token tok;
            switch (ch) {
                case 100: {
                    tok = this.isSet(32) ? Token.getRange("Nd", true) : Token.token_0to9;
                    break;
                }
                case 68: {
                    tok = this.isSet(32) ? Token.getRange("Nd", false) : Token.token_not_0to9;
                    break;
                }
                case 119: {
                    tok = this.isSet(32) ? Token.getRange("IsWord", true) : Token.token_wordchars;
                    break;
                }
                case 87: {
                    tok = this.isSet(32) ? Token.getRange("IsWord", false) : Token.token_not_wordchars;
                    break;
                }
                case 115: {
                    tok = this.isSet(32) ? Token.getRange("IsSpace", true) : Token.token_spaces;
                    break;
                }
                case 83: {
                    tok = this.isSet(32) ? Token.getRange("IsSpace", false) : Token.token_not_spaces;
                    break;
                }
                default: {
                    throw new RuntimeException("Internal Error: shorthands: \\u" + Integer.toString(ch, 16));
                }
            }
            return tok;
        }

        int decodeEscaped() throws ParseException {
            if (this.read() != 10) {
                throw this.ex("parser.next.1", this.offset - 1);
            }
            int c = this.chardata;
            switch (c) {
                case 101: {
                    c = 27;
                    break;
                }
                case 102: {
                    c = 12;
                    break;
                }
                case 110: {
                    c = 10;
                    break;
                }
                case 114: {
                    c = 13;
                    break;
                }
                case 116: {
                    c = 9;
                    break;
                }
                case 120: {
                    this.next();
                    if (this.read() != 0) {
                        throw this.ex("parser.descape.1", this.offset - 1);
                    }
                    if (this.chardata == 123) {
                        int v1 = 0;
                        int uv = 0;
                        while (true) {
                            this.next();
                            if (this.read() != 0) {
                                throw this.ex("parser.descape.1", this.offset - 1);
                            }
                            v1 = RegexParser.hexChar(this.chardata);
                            if (v1 < 0) break;
                            if (uv > uv * 16) {
                                throw this.ex("parser.descape.2", this.offset - 1);
                            }
                            uv = uv * 16 + v1;
                        }
                        if (this.chardata != 125) {
                            throw this.ex("parser.descape.3", this.offset - 1);
                        }
                        if (uv > 0x10FFFF) {
                            throw this.ex("parser.descape.4", this.offset - 1);
                        }
                        c = uv;
                        break;
                    }
                    int v1 = 0;
                    if (this.read() != 0 || (v1 = RegexParser.hexChar(this.chardata)) < 0) {
                        throw this.ex("parser.descape.1", this.offset - 1);
                    }
                    int uv = v1;
                    this.next();
                    if (this.read() != 0 || (v1 = RegexParser.hexChar(this.chardata)) < 0) {
                        throw this.ex("parser.descape.1", this.offset - 1);
                    }
                    c = uv = uv * 16 + v1;
                    break;
                }
                case 117: {
                    int v1 = 0;
                    this.next();
                    if (this.read() != 0 || (v1 = RegexParser.hexChar(this.chardata)) < 0) {
                        throw this.ex("parser.descape.1", this.offset - 1);
                    }
                    int uv = v1;
                    this.next();
                    if (this.read() != 0 || (v1 = RegexParser.hexChar(this.chardata)) < 0) {
                        throw this.ex("parser.descape.1", this.offset - 1);
                    }
                    uv = uv * 16 + v1;
                    this.next();
                    if (this.read() != 0 || (v1 = RegexParser.hexChar(this.chardata)) < 0) {
                        throw this.ex("parser.descape.1", this.offset - 1);
                    }
                    uv = uv * 16 + v1;
                    this.next();
                    if (this.read() != 0 || (v1 = RegexParser.hexChar(this.chardata)) < 0) {
                        throw this.ex("parser.descape.1", this.offset - 1);
                    }
                    c = uv = uv * 16 + v1;
                    break;
                }
                case 118: {
                    int v1;
                    this.next();
                    if (this.read() != 0 || (v1 = RegexParser.hexChar(this.chardata)) < 0) {
                        throw this.ex("parser.descape.1", this.offset - 1);
                    }
                    int uv = v1;
                    this.next();
                    if (this.read() != 0 || (v1 = RegexParser.hexChar(this.chardata)) < 0) {
                        throw this.ex("parser.descape.1", this.offset - 1);
                    }
                    uv = uv * 16 + v1;
                    this.next();
                    if (this.read() != 0 || (v1 = RegexParser.hexChar(this.chardata)) < 0) {
                        throw this.ex("parser.descape.1", this.offset - 1);
                    }
                    uv = uv * 16 + v1;
                    this.next();
                    if (this.read() != 0 || (v1 = RegexParser.hexChar(this.chardata)) < 0) {
                        throw this.ex("parser.descape.1", this.offset - 1);
                    }
                    uv = uv * 16 + v1;
                    this.next();
                    if (this.read() != 0 || (v1 = RegexParser.hexChar(this.chardata)) < 0) {
                        throw this.ex("parser.descape.1", this.offset - 1);
                    }
                    uv = uv * 16 + v1;
                    this.next();
                    if (this.read() != 0 || (v1 = RegexParser.hexChar(this.chardata)) < 0) {
                        throw this.ex("parser.descape.1", this.offset - 1);
                    }
                    if ((uv = uv * 16 + v1) > 0x10FFFF) {
                        throw this.ex("parser.descappe.4", this.offset - 1);
                    }
                    c = uv;
                    break;
                }
                case 65: 
                case 90: 
                case 122: {
                    throw this.ex("parser.descape.5", this.offset - 2);
                }
            }
            return c;
        }

        private static final int hexChar(int ch) {
            if (ch < 48) {
                return -1;
            }
            if (ch > 102) {
                return -1;
            }
            if (ch <= 57) {
                return ch - 48;
            }
            if (ch < 65) {
                return -1;
            }
            if (ch <= 70) {
                return ch - 65 + 10;
            }
            if (ch < 97) {
                return -1;
            }
            return ch - 97 + 10;
        }

        static class ReferencePosition {
            int refNumber;
            int position;

            ReferencePosition(int n, int pos) {
                this.refNumber = n;
                this.position = pos;
            }
        }
    }

    public static class RegularExpression
    implements Serializable {
        private static final long serialVersionUID = 1L;
        static final boolean DEBUG = false;
        String regex;
        int options;
        int nofparen;
        Token tokentree;
        boolean hasBackReferences = false;
        transient int minlength;
        transient Op operations = null;
        transient int numberOfClosures;
        transient Context context = null;
        transient RangeToken firstChar = null;
        transient String fixedString = null;
        transient int fixedStringOptions;
        transient BMPattern fixedStringTable = null;
        transient boolean fixedStringOnly = false;
        static final int IGNORE_CASE = 2;
        static final int SINGLE_LINE = 4;
        static final int MULTIPLE_LINES = 8;
        static final int EXTENDED_COMMENT = 16;
        static final int USE_UNICODE_CATEGORY = 32;
        static final int UNICODE_WORD_BOUNDARY = 64;
        static final int PROHIBIT_HEAD_CHARACTER_OPTIMIZATION = 128;
        static final int PROHIBIT_FIXED_STRING_OPTIMIZATION = 256;
        static final int XMLSCHEMA_MODE = 512;
        static final int SPECIAL_COMMA = 1024;
        private static final int WT_IGNORE = 0;
        private static final int WT_LETTER = 1;
        private static final int WT_OTHER = 2;
        static final int LINE_FEED = 10;
        static final int CARRIAGE_RETURN = 13;
        static final int LINE_SEPARATOR = 8232;
        static final int PARAGRAPH_SEPARATOR = 8233;

        private synchronized void compile(Token tok) {
            if (this.operations != null) {
                return;
            }
            this.numberOfClosures = 0;
            this.operations = this.compile(tok, null, false);
        }

        private Op compile(Token tok, Op next, boolean reverse) {
            Op ret;
            switch (tok.type) {
                case 11: {
                    ret = Op.createDot();
                    ret.next = next;
                    break;
                }
                case 0: {
                    ret = Op.createChar(tok.getChar());
                    ret.next = next;
                    break;
                }
                case 8: {
                    ret = Op.createAnchor(tok.getChar());
                    ret.next = next;
                    break;
                }
                case 4: 
                case 5: {
                    ret = Op.createRange(tok);
                    ret.next = next;
                    break;
                }
                case 1: {
                    ret = next;
                    if (!reverse) {
                        int i = tok.size() - 1;
                        while (i >= 0) {
                            ret = this.compile(tok.getChild(i), ret, false);
                            --i;
                        }
                    } else {
                        int i = 0;
                        while (i < tok.size()) {
                            ret = this.compile(tok.getChild(i), ret, true);
                            ++i;
                        }
                    }
                    break;
                }
                case 2: {
                    Op.UnionOp uni = Op.createUnion(tok.size());
                    int i = 0;
                    while (i < tok.size()) {
                        uni.addElement(this.compile(tok.getChild(i), next, reverse));
                        ++i;
                    }
                    ret = uni;
                    break;
                }
                case 3: 
                case 9: {
                    Token child = tok.getChild(0);
                    int min = tok.getMin();
                    int max = tok.getMax();
                    if (min >= 0 && min == max) {
                        ret = next;
                        int i = 0;
                        while (i < min) {
                            ret = this.compile(child, ret, reverse);
                            ++i;
                        }
                    } else {
                        if (min > 0 && max > 0) {
                            max -= min;
                        }
                        if (max > 0) {
                            ret = next;
                            int i = 0;
                            while (i < max) {
                                Op.ChildOp q = Op.createQuestion(tok.type == 9);
                                q.next = next;
                                q.setChild(this.compile(child, ret, reverse));
                                ret = q;
                                ++i;
                            }
                        } else {
                            Op.ChildOp op = tok.type == 9 ? Op.createNonGreedyClosure() : (child.getMinLength() == 0 ? Op.createClosure(this.numberOfClosures++) : Op.createClosure(-1));
                            op.next = next;
                            op.setChild(this.compile(child, op, reverse));
                            ret = op;
                        }
                        if (min <= 0) break;
                        int i = 0;
                        while (i < min) {
                            ret = this.compile(child, ret, reverse);
                            ++i;
                        }
                    }
                    break;
                }
                case 7: {
                    ret = next;
                    break;
                }
                case 10: {
                    ret = Op.createString(tok.getString());
                    ret.next = next;
                    break;
                }
                case 12: {
                    ret = Op.createBackReference(tok.getReferenceNumber());
                    ret.next = next;
                    break;
                }
                case 6: {
                    if (tok.getParenNumber() == 0) {
                        ret = this.compile(tok.getChild(0), next, reverse);
                        break;
                    }
                    if (reverse) {
                        next = Op.createCapture(tok.getParenNumber(), next);
                        next = this.compile(tok.getChild(0), next, reverse);
                        ret = Op.createCapture(-tok.getParenNumber(), next);
                        break;
                    }
                    next = Op.createCapture(-tok.getParenNumber(), next);
                    next = this.compile(tok.getChild(0), next, reverse);
                    ret = Op.createCapture(tok.getParenNumber(), next);
                    break;
                }
                case 20: {
                    ret = Op.createLook(20, next, this.compile(tok.getChild(0), null, false));
                    break;
                }
                case 21: {
                    ret = Op.createLook(21, next, this.compile(tok.getChild(0), null, false));
                    break;
                }
                case 22: {
                    ret = Op.createLook(22, next, this.compile(tok.getChild(0), null, true));
                    break;
                }
                case 23: {
                    ret = Op.createLook(23, next, this.compile(tok.getChild(0), null, true));
                    break;
                }
                case 24: {
                    ret = Op.createIndependent(next, this.compile(tok.getChild(0), null, reverse));
                    break;
                }
                case 25: {
                    ret = Op.createModifier(next, this.compile(tok.getChild(0), null, reverse), ((Token.ModifierToken)tok).getOptions(), ((Token.ModifierToken)tok).getOptionsMask());
                    break;
                }
                case 26: {
                    Token.ConditionToken ctok = (Token.ConditionToken)tok;
                    int ref = ctok.refNumber;
                    Op condition = ctok.condition == null ? null : this.compile(ctok.condition, null, reverse);
                    Op yes = this.compile(ctok.yes, next, reverse);
                    Op no = ctok.no == null ? null : this.compile(ctok.no, next, reverse);
                    ret = Op.createCondition(next, ref, condition, yes, no);
                    break;
                }
                default: {
                    throw new RuntimeException("Unknown token type: " + tok.type);
                }
            }
            return ret;
        }

        public boolean matches(char[] target) {
            return this.matches(target, 0, target.length, null);
        }

        public boolean matches(char[] target, int start, int end) {
            return this.matches(target, start, end, null);
        }

        public boolean matches(char[] target, Match match) {
            return this.matches(target, 0, target.length, match);
        }

        /*
         * WARNING - Removed try catching itself - possible behaviour change.
         */
        public boolean matches(char[] target, int start, int end, Match match) {
            int matchStart;
            int o;
            RegularExpression regularExpression = this;
            synchronized (regularExpression) {
                if (this.operations == null) {
                    this.prepare();
                }
                if (this.context == null) {
                    this.context = new Context();
                }
            }
            Context con = null;
            Context context = this.context;
            synchronized (context) {
                con = this.context.inuse ? new Context() : this.context;
                con.reset(target, start, end, this.numberOfClosures);
            }
            if (match != null) {
                match.setNumberOfGroups(this.nofparen);
                match.setSource(target);
            } else if (this.hasBackReferences) {
                match = new Match();
                match.setNumberOfGroups(this.nofparen);
            }
            con.match = match;
            if (RegularExpression.isSet(this.options, 512)) {
                int matchEnd = this.matchCharArray(con, this.operations, con.start, 1, this.options);
                if (matchEnd == con.limit) {
                    if (con.match != null) {
                        con.match.setBeginning(0, con.start);
                        con.match.setEnd(0, matchEnd);
                    }
                    con.inuse = false;
                    return true;
                }
                return false;
            }
            if (this.fixedStringOnly) {
                int o2 = this.fixedStringTable.matches(target, con.start, con.limit);
                if (o2 >= 0) {
                    if (con.match != null) {
                        con.match.setBeginning(0, o2);
                        con.match.setEnd(0, o2 + this.fixedString.length());
                    }
                    con.inuse = false;
                    return true;
                }
                con.inuse = false;
                return false;
            }
            if (this.fixedString != null && (o = this.fixedStringTable.matches(target, con.start, con.limit)) < 0) {
                con.inuse = false;
                return false;
            }
            int limit = con.limit - this.minlength;
            int matchEnd = -1;
            if (this.operations != null && this.operations.type == 7 && this.operations.getChild().type == 0) {
                if (RegularExpression.isSet(this.options, 4)) {
                    matchStart = con.start;
                    matchEnd = this.matchCharArray(con, this.operations, con.start, 1, this.options);
                } else {
                    boolean previousIsEOL = true;
                    matchStart = con.start;
                    while (matchStart <= limit) {
                        char ch = target[matchStart];
                        if (RegularExpression.isEOLChar(ch)) {
                            previousIsEOL = true;
                        } else {
                            if (previousIsEOL && (matchEnd = this.matchCharArray(con, this.operations, matchStart, 1, this.options)) >= 0) break;
                            previousIsEOL = false;
                        }
                        ++matchStart;
                    }
                }
            } else if (this.firstChar != null) {
                RangeToken range = this.firstChar;
                if (RegularExpression.isSet(this.options, 2)) {
                    range = this.firstChar.getCaseInsensitiveToken();
                    matchStart = con.start;
                    while (matchStart <= limit) {
                        char ch1;
                        int ch = target[matchStart];
                        if (!(!REUtil.isHighSurrogate(ch) || matchStart + 1 >= con.limit ? !range.match(ch) && !range.match(ch1 = Character.toUpperCase((char)ch)) && !range.match(Character.toLowerCase(ch1)) : !range.match(ch = REUtil.composeFromSurrogates(ch, target[matchStart + 1])))) {
                            matchEnd = this.matchCharArray(con, this.operations, matchStart, 1, this.options);
                            if (matchEnd >= 0) break;
                        }
                        ++matchStart;
                    }
                } else {
                    matchStart = con.start;
                    while (matchStart <= limit) {
                        int ch = target[matchStart];
                        if (REUtil.isHighSurrogate(ch) && matchStart + 1 < con.limit) {
                            ch = REUtil.composeFromSurrogates(ch, target[matchStart + 1]);
                        }
                        if (!range.match(ch) || (matchEnd = this.matchCharArray(con, this.operations, matchStart, 1, this.options)) < 0) {
                            ++matchStart;
                            continue;
                        }
                        break;
                    }
                }
            } else {
                matchStart = con.start;
                while (matchStart <= limit) {
                    matchEnd = this.matchCharArray(con, this.operations, matchStart, 1, this.options);
                    if (matchEnd < 0) {
                        ++matchStart;
                        continue;
                    }
                    break;
                }
            }
            if (matchEnd >= 0) {
                if (con.match != null) {
                    con.match.setBeginning(0, matchStart);
                    con.match.setEnd(0, matchEnd);
                }
                con.inuse = false;
                return true;
            }
            con.inuse = false;
            return false;
        }

        private int matchCharArray(Context con, Op op, int offset, int dx, int opts) {
            char[] target = con.charTarget;
            block32: while (true) {
                if (op == null) {
                    return RegularExpression.isSet(opts, 512) && offset != con.limit ? -1 : offset;
                }
                if (offset > con.limit || offset < con.start) {
                    return -1;
                }
                switch (op.type) {
                    case 1: {
                        int ch;
                        if (RegularExpression.isSet(opts, 2)) {
                            ch = op.getData();
                            if (dx > 0) {
                                if (offset >= con.limit || !RegularExpression.matchIgnoreCase(ch, target[offset])) {
                                    return -1;
                                }
                                ++offset;
                            } else {
                                int o1 = offset - 1;
                                if (o1 >= con.limit || o1 < 0 || !RegularExpression.matchIgnoreCase(ch, target[o1])) {
                                    return -1;
                                }
                                offset = o1;
                            }
                        } else {
                            ch = op.getData();
                            if (dx > 0) {
                                if (offset >= con.limit || ch != target[offset]) {
                                    return -1;
                                }
                                ++offset;
                            } else {
                                int o1 = offset - 1;
                                if (o1 >= con.limit || o1 < 0 || ch != target[o1]) {
                                    return -1;
                                }
                                offset = o1;
                            }
                        }
                        op = op.next;
                        continue block32;
                    }
                    case 0: {
                        int o1;
                        int ch;
                        if (dx > 0) {
                            if (offset >= con.limit) {
                                return -1;
                            }
                            ch = target[offset];
                            if (RegularExpression.isSet(opts, 4)) {
                                if (REUtil.isHighSurrogate(ch) && offset + 1 < con.limit) {
                                    ++offset;
                                }
                            } else {
                                if (REUtil.isHighSurrogate(ch) && offset + 1 < con.limit) {
                                    ch = REUtil.composeFromSurrogates(ch, target[++offset]);
                                }
                                if (RegularExpression.isEOLChar(ch)) {
                                    return -1;
                                }
                            }
                            ++offset;
                        } else {
                            o1 = offset - 1;
                            if (o1 >= con.limit || o1 < 0) {
                                return -1;
                            }
                            int ch2 = target[o1];
                            if (RegularExpression.isSet(opts, 4)) {
                                if (REUtil.isLowSurrogate(ch2) && o1 - 1 >= 0) {
                                    // empty if block
                                }
                            } else {
                                if (REUtil.isLowSurrogate(ch2) && o1 - 1 >= 0) {
                                    ch2 = REUtil.composeFromSurrogates(target[--o1], ch2);
                                }
                                if (!RegularExpression.isEOLChar(ch2)) {
                                    return -1;
                                }
                            }
                            offset = --o1;
                        }
                        op = op.next;
                        continue block32;
                    }
                    case 3: 
                    case 4: {
                        int o1;
                        int ch;
                        if (dx > 0) {
                            if (offset >= con.limit) {
                                return -1;
                            }
                            ch = target[offset];
                            if (REUtil.isHighSurrogate(ch) && offset + 1 < con.limit) {
                                ch = REUtil.composeFromSurrogates(ch, target[++offset]);
                            }
                            RangeToken tok = op.getToken();
                            if (RegularExpression.isSet(opts, 2)) {
                                if (!(tok = tok.getCaseInsensitiveToken()).match(ch)) {
                                    if (ch >= 65536) {
                                        return -1;
                                    }
                                    char uch = Character.toUpperCase((char)ch);
                                    if (!tok.match(uch) && !tok.match(Character.toLowerCase(uch))) {
                                        return -1;
                                    }
                                }
                            } else if (!tok.match(ch)) {
                                return -1;
                            }
                            ++offset;
                        } else {
                            o1 = offset - 1;
                            if (o1 >= con.limit || o1 < 0) {
                                return -1;
                            }
                            int ch3 = target[o1];
                            if (REUtil.isLowSurrogate(ch3) && o1 - 1 >= 0) {
                                ch3 = REUtil.composeFromSurrogates(target[--o1], ch3);
                            }
                            RangeToken tok = op.getToken();
                            if (RegularExpression.isSet(opts, 2)) {
                                if (!(tok = tok.getCaseInsensitiveToken()).match(ch3)) {
                                    if (ch3 >= 65536) {
                                        return -1;
                                    }
                                    char uch = Character.toUpperCase((char)ch3);
                                    if (!tok.match(uch) && !tok.match(Character.toLowerCase(uch))) {
                                        return -1;
                                    }
                                }
                            } else if (!tok.match(ch3)) {
                                return -1;
                            }
                            offset = o1;
                        }
                        op = op.next;
                        continue block32;
                    }
                    case 5: {
                        boolean go = false;
                        switch (op.getData()) {
                            case 94: {
                                if (!(RegularExpression.isSet(opts, 8) ? offset != con.start && (offset <= con.start || !RegularExpression.isEOLChar(target[offset - 1])) : offset != con.start)) break;
                                return -1;
                            }
                            case 64: {
                                if (offset == con.start || offset > con.start && RegularExpression.isEOLChar(target[offset - 1])) break;
                                return -1;
                            }
                            case 36: {
                                if (!(RegularExpression.isSet(opts, 8) ? offset != con.limit && (offset >= con.limit || !RegularExpression.isEOLChar(target[offset])) : !(offset == con.limit || offset + 1 == con.limit && RegularExpression.isEOLChar(target[offset]) || offset + 2 == con.limit && target[offset] == '\r' && target[offset + 1] == '\n'))) break;
                                return -1;
                            }
                            case 65: {
                                if (offset == con.start) break;
                                return -1;
                            }
                            case 90: {
                                if (offset == con.limit || offset + 1 == con.limit && RegularExpression.isEOLChar(target[offset]) || offset + 2 == con.limit && target[offset] == '\r' && target[offset + 1] == '\n') break;
                                return -1;
                            }
                            case 122: {
                                if (offset == con.limit) break;
                                return -1;
                            }
                            case 98: {
                                if (con.length == 0) {
                                    return -1;
                                }
                                int after = RegularExpression.getWordType(target, con.start, con.limit, offset, opts);
                                if (after == 0) {
                                    return -1;
                                }
                                int before = RegularExpression.getPreviousWordType(target, con.start, con.limit, offset, opts);
                                if (after != before) break;
                                return -1;
                            }
                            case 66: {
                                if (con.length == 0) {
                                    go = true;
                                } else {
                                    int after = RegularExpression.getWordType(target, con.start, con.limit, offset, opts);
                                    boolean bl = go = after == 0 || after == RegularExpression.getPreviousWordType(target, con.start, con.limit, offset, opts);
                                }
                                if (go) break;
                                return -1;
                            }
                            case 60: {
                                if (con.length == 0 || offset == con.limit) {
                                    return -1;
                                }
                                if (RegularExpression.getWordType(target, con.start, con.limit, offset, opts) == 1 && RegularExpression.getPreviousWordType(target, con.start, con.limit, offset, opts) == 2) break;
                                return -1;
                            }
                            case 62: {
                                if (con.length == 0 || offset == con.start) {
                                    return -1;
                                }
                                if (RegularExpression.getWordType(target, con.start, con.limit, offset, opts) == 2 && RegularExpression.getPreviousWordType(target, con.start, con.limit, offset, opts) == 1) break;
                                return -1;
                            }
                        }
                        op = op.next;
                        continue block32;
                    }
                    case 16: {
                        int refno = op.getData();
                        if (refno <= 0 || refno >= this.nofparen) {
                            throw new RuntimeException("Internal Error: Reference number must be more than zero: " + refno);
                        }
                        if (con.match.getBeginning(refno) < 0 || con.match.getEnd(refno) < 0) {
                            return -1;
                        }
                        int o2 = con.match.getBeginning(refno);
                        int literallen = con.match.getEnd(refno) - o2;
                        if (!RegularExpression.isSet(opts, 2)) {
                            if (dx > 0) {
                                if (!RegularExpression.regionMatches(target, offset, con.limit, o2, literallen)) {
                                    return -1;
                                }
                                offset += literallen;
                            } else {
                                if (!RegularExpression.regionMatches(target, offset - literallen, con.limit, o2, literallen)) {
                                    return -1;
                                }
                                offset -= literallen;
                            }
                        } else if (dx > 0) {
                            if (!RegularExpression.regionMatchesIgnoreCase(target, offset, con.limit, o2, literallen)) {
                                return -1;
                            }
                            offset += literallen;
                        } else {
                            if (!RegularExpression.regionMatchesIgnoreCase(target, offset - literallen, con.limit, o2, literallen)) {
                                return -1;
                            }
                            offset -= literallen;
                        }
                        op = op.next;
                        continue block32;
                    }
                    case 6: {
                        String literal = op.getString();
                        int literallen = literal.length();
                        if (!RegularExpression.isSet(opts, 2)) {
                            if (dx > 0) {
                                if (!RegularExpression.regionMatches(target, offset, con.limit, literal, literallen)) {
                                    return -1;
                                }
                                offset += literallen;
                            } else {
                                if (!RegularExpression.regionMatches(target, offset - literallen, con.limit, literal, literallen)) {
                                    return -1;
                                }
                                offset -= literallen;
                            }
                        } else if (dx > 0) {
                            if (!RegularExpression.regionMatchesIgnoreCase(target, offset, con.limit, literal, literallen)) {
                                return -1;
                            }
                            offset += literallen;
                        } else {
                            if (!RegularExpression.regionMatchesIgnoreCase(target, offset - literallen, con.limit, literal, literallen)) {
                                return -1;
                            }
                            offset -= literallen;
                        }
                        op = op.next;
                        continue block32;
                    }
                    case 7: {
                        int id = op.getData();
                        if (id >= 0) {
                            int previousOffset = con.offsets[id];
                            if (previousOffset < 0 || previousOffset != offset) {
                                con.offsets[id] = offset;
                            } else {
                                con.offsets[id] = -1;
                                op = op.next;
                                continue block32;
                            }
                        }
                        int ret = this.matchCharArray(con, op.getChild(), offset, dx, opts);
                        if (id >= 0) {
                            con.offsets[id] = -1;
                        }
                        if (ret >= 0) {
                            return ret;
                        }
                        op = op.next;
                        continue block32;
                    }
                    case 9: {
                        int ret = this.matchCharArray(con, op.getChild(), offset, dx, opts);
                        if (ret >= 0) {
                            return ret;
                        }
                        op = op.next;
                        continue block32;
                    }
                    case 8: 
                    case 10: {
                        int ret = this.matchCharArray(con, op.next, offset, dx, opts);
                        if (ret >= 0) {
                            return ret;
                        }
                        op = op.getChild();
                        continue block32;
                    }
                    case 11: {
                        int i = 0;
                        while (i < op.size()) {
                            int ret = this.matchCharArray(con, op.elementAt(i), offset, dx, opts);
                            if (ret >= 0) {
                                return ret;
                            }
                            ++i;
                        }
                        return -1;
                    }
                    case 15: {
                        int ret;
                        int refno = op.getData();
                        if (con.match != null && refno > 0) {
                            int save = con.match.getBeginning(refno);
                            con.match.setBeginning(refno, offset);
                            ret = this.matchCharArray(con, op.next, offset, dx, opts);
                            if (ret < 0) {
                                con.match.setBeginning(refno, save);
                            }
                            return ret;
                        }
                        if (con.match != null && refno < 0) {
                            int index = -refno;
                            int save = con.match.getEnd(index);
                            con.match.setEnd(index, offset);
                            int ret2 = this.matchCharArray(con, op.next, offset, dx, opts);
                            if (ret2 < 0) {
                                con.match.setEnd(index, save);
                            }
                            return ret2;
                        }
                        op = op.next;
                        continue block32;
                    }
                    case 20: {
                        if (this.matchCharArray(con, op.getChild(), offset, 1, opts) < 0) {
                            return -1;
                        }
                        op = op.next;
                        continue block32;
                    }
                    case 21: {
                        if (this.matchCharArray(con, op.getChild(), offset, 1, opts) >= 0) {
                            return -1;
                        }
                        op = op.next;
                        continue block32;
                    }
                    case 22: {
                        if (this.matchCharArray(con, op.getChild(), offset, -1, opts) < 0) {
                            return -1;
                        }
                        op = op.next;
                        continue block32;
                    }
                    case 23: {
                        if (this.matchCharArray(con, op.getChild(), offset, -1, opts) >= 0) {
                            return -1;
                        }
                        op = op.next;
                        continue block32;
                    }
                    case 24: {
                        int ret = this.matchCharArray(con, op.getChild(), offset, dx, opts);
                        if (ret < 0) {
                            return ret;
                        }
                        offset = ret;
                        op = op.next;
                        continue block32;
                    }
                    case 25: {
                        int localopts = opts;
                        localopts |= op.getData();
                        int ret = this.matchCharArray(con, op.getChild(), offset, dx, localopts &= ~op.getData2());
                        if (ret < 0) {
                            return ret;
                        }
                        offset = ret;
                        op = op.next;
                        continue block32;
                    }
                    case 26: {
                        Op.ConditionOp cop = (Op.ConditionOp)op;
                        boolean matchp = false;
                        if (cop.refNumber > 0) {
                            if (cop.refNumber >= this.nofparen) {
                                throw new RuntimeException("Internal Error: Reference number must be more than zero: " + cop.refNumber);
                            }
                            matchp = con.match.getBeginning(cop.refNumber) >= 0 && con.match.getEnd(cop.refNumber) >= 0;
                        } else {
                            boolean bl = matchp = this.matchCharArray(con, cop.condition, offset, dx, opts) >= 0;
                        }
                        if (matchp) {
                            op = cop.yes;
                            continue block32;
                        }
                        if (cop.no != null) {
                            op = cop.no;
                            continue block32;
                        }
                        op = cop.next;
                        continue block32;
                    }
                }
                break;
            }
            throw new RuntimeException("Unknown operation type: " + op.type);
        }

        private static final int getPreviousWordType(char[] target, int begin, int end, int offset, int opts) {
            int ret = RegularExpression.getWordType(target, begin, end, --offset, opts);
            while (ret == 0) {
                ret = RegularExpression.getWordType(target, begin, end, --offset, opts);
            }
            return ret;
        }

        private static final int getWordType(char[] target, int begin, int end, int offset, int opts) {
            if (offset < begin || offset >= end) {
                return 2;
            }
            return RegularExpression.getWordType0(target[offset], opts);
        }

        private static final boolean regionMatches(char[] target, int offset, int limit, String part, int partlen) {
            if (offset < 0) {
                return false;
            }
            if (limit - offset < partlen) {
                return false;
            }
            int i = 0;
            while (partlen-- > 0) {
                if (target[offset++] == part.charAt(i++)) continue;
                return false;
            }
            return true;
        }

        private static final boolean regionMatches(char[] target, int offset, int limit, int offset2, int partlen) {
            if (offset < 0) {
                return false;
            }
            if (limit - offset < partlen) {
                return false;
            }
            int i = offset2;
            while (partlen-- > 0) {
                if (target[offset++] == target[i++]) continue;
                return false;
            }
            return true;
        }

        private static final boolean regionMatchesIgnoreCase(char[] target, int offset, int limit, String part, int partlen) {
            if (offset < 0) {
                return false;
            }
            if (limit - offset < partlen) {
                return false;
            }
            int i = 0;
            while (partlen-- > 0) {
                char uch2;
                char uch1;
                char ch2;
                char ch1;
                if ((ch1 = target[offset++]) == (ch2 = part.charAt(i++)) || (uch1 = Character.toUpperCase(ch1)) == (uch2 = Character.toUpperCase(ch2)) || Character.toLowerCase(uch1) == Character.toLowerCase(uch2)) continue;
                return false;
            }
            return true;
        }

        private static final boolean regionMatchesIgnoreCase(char[] target, int offset, int limit, int offset2, int partlen) {
            if (offset < 0) {
                return false;
            }
            if (limit - offset < partlen) {
                return false;
            }
            int i = offset2;
            while (partlen-- > 0) {
                char uch2;
                char uch1;
                char ch2;
                char ch1;
                if ((ch1 = target[offset++]) == (ch2 = target[i++]) || (uch1 = Character.toUpperCase(ch1)) == (uch2 = Character.toUpperCase(ch2)) || Character.toLowerCase(uch1) == Character.toLowerCase(uch2)) continue;
                return false;
            }
            return true;
        }

        public boolean matches(String target) {
            return this.matches(target, 0, target.length(), null);
        }

        public boolean matches(String target, int start, int end) {
            return this.matches(target, start, end, null);
        }

        public boolean matches(String target, Match match) {
            return this.matches(target, 0, target.length(), match);
        }

        /*
         * WARNING - Removed try catching itself - possible behaviour change.
         */
        public boolean matches(String target, int start, int end, Match match) {
            int matchStart;
            int o;
            RegularExpression regularExpression = this;
            synchronized (regularExpression) {
                if (this.operations == null) {
                    this.prepare();
                }
                if (this.context == null) {
                    this.context = new Context();
                }
            }
            Context con = null;
            Context context = this.context;
            synchronized (context) {
                con = this.context.inuse ? new Context() : this.context;
                con.reset(target, start, end, this.numberOfClosures);
            }
            if (match != null) {
                match.setNumberOfGroups(this.nofparen);
                match.setSource(target);
            } else if (this.hasBackReferences) {
                match = new Match();
                match.setNumberOfGroups(this.nofparen);
            }
            con.match = match;
            if (RegularExpression.isSet(this.options, 512)) {
                int matchEnd = this.matchString(con, this.operations, con.start, 1, this.options);
                if (matchEnd == con.limit) {
                    if (con.match != null) {
                        con.match.setBeginning(0, con.start);
                        con.match.setEnd(0, matchEnd);
                    }
                    con.inuse = false;
                    return true;
                }
                return false;
            }
            if (this.fixedStringOnly) {
                int o2 = this.fixedStringTable.matches(target, con.start, con.limit);
                if (o2 >= 0) {
                    if (con.match != null) {
                        con.match.setBeginning(0, o2);
                        con.match.setEnd(0, o2 + this.fixedString.length());
                    }
                    con.inuse = false;
                    return true;
                }
                con.inuse = false;
                return false;
            }
            if (this.fixedString != null && (o = this.fixedStringTable.matches(target, con.start, con.limit)) < 0) {
                con.inuse = false;
                return false;
            }
            int limit = con.limit - this.minlength;
            int matchEnd = -1;
            if (this.operations != null && this.operations.type == 7 && this.operations.getChild().type == 0) {
                if (RegularExpression.isSet(this.options, 4)) {
                    matchStart = con.start;
                    matchEnd = this.matchString(con, this.operations, con.start, 1, this.options);
                } else {
                    boolean previousIsEOL = true;
                    matchStart = con.start;
                    while (matchStart <= limit) {
                        char ch = target.charAt(matchStart);
                        if (RegularExpression.isEOLChar(ch)) {
                            previousIsEOL = true;
                        } else {
                            if (previousIsEOL && (matchEnd = this.matchString(con, this.operations, matchStart, 1, this.options)) >= 0) break;
                            previousIsEOL = false;
                        }
                        ++matchStart;
                    }
                }
            } else if (this.firstChar != null) {
                RangeToken range = this.firstChar;
                if (RegularExpression.isSet(this.options, 2)) {
                    range = this.firstChar.getCaseInsensitiveToken();
                    matchStart = con.start;
                    while (matchStart <= limit) {
                        char ch1;
                        int ch = target.charAt(matchStart);
                        if (!(!REUtil.isHighSurrogate(ch) || matchStart + 1 >= con.limit ? !range.match(ch) && !range.match(ch1 = Character.toUpperCase((char)ch)) && !range.match(Character.toLowerCase(ch1)) : !range.match(ch = REUtil.composeFromSurrogates(ch, target.charAt(matchStart + 1))))) {
                            matchEnd = this.matchString(con, this.operations, matchStart, 1, this.options);
                            if (matchEnd >= 0) break;
                        }
                        ++matchStart;
                    }
                } else {
                    matchStart = con.start;
                    while (matchStart <= limit) {
                        int ch = target.charAt(matchStart);
                        if (REUtil.isHighSurrogate(ch) && matchStart + 1 < con.limit) {
                            ch = REUtil.composeFromSurrogates(ch, target.charAt(matchStart + 1));
                        }
                        if (!range.match(ch) || (matchEnd = this.matchString(con, this.operations, matchStart, 1, this.options)) < 0) {
                            ++matchStart;
                            continue;
                        }
                        break;
                    }
                }
            } else {
                matchStart = con.start;
                while (matchStart <= limit) {
                    matchEnd = this.matchString(con, this.operations, matchStart, 1, this.options);
                    if (matchEnd < 0) {
                        ++matchStart;
                        continue;
                    }
                    break;
                }
            }
            if (matchEnd >= 0) {
                if (con.match != null) {
                    con.match.setBeginning(0, matchStart);
                    con.match.setEnd(0, matchEnd);
                }
                con.inuse = false;
                return true;
            }
            con.inuse = false;
            return false;
        }

        private int matchString(Context con, Op op, int offset, int dx, int opts) {
            String target = con.strTarget;
            block32: while (true) {
                if (op == null) {
                    return RegularExpression.isSet(opts, 512) && offset != con.limit ? -1 : offset;
                }
                if (offset > con.limit || offset < con.start) {
                    return -1;
                }
                switch (op.type) {
                    case 1: {
                        int ch;
                        if (RegularExpression.isSet(opts, 2)) {
                            ch = op.getData();
                            if (dx > 0) {
                                if (offset >= con.limit || !RegularExpression.matchIgnoreCase(ch, target.charAt(offset))) {
                                    return -1;
                                }
                                ++offset;
                            } else {
                                int o1 = offset - 1;
                                if (o1 >= con.limit || o1 < 0 || !RegularExpression.matchIgnoreCase(ch, target.charAt(o1))) {
                                    return -1;
                                }
                                offset = o1;
                            }
                        } else {
                            ch = op.getData();
                            if (dx > 0) {
                                if (offset >= con.limit || ch != target.charAt(offset)) {
                                    return -1;
                                }
                                ++offset;
                            } else {
                                int o1 = offset - 1;
                                if (o1 >= con.limit || o1 < 0 || ch != target.charAt(o1)) {
                                    return -1;
                                }
                                offset = o1;
                            }
                        }
                        op = op.next;
                        continue block32;
                    }
                    case 0: {
                        int o1;
                        int ch;
                        if (dx > 0) {
                            if (offset >= con.limit) {
                                return -1;
                            }
                            ch = target.charAt(offset);
                            if (RegularExpression.isSet(opts, 4)) {
                                if (REUtil.isHighSurrogate(ch) && offset + 1 < con.limit) {
                                    ++offset;
                                }
                            } else {
                                if (REUtil.isHighSurrogate(ch) && offset + 1 < con.limit) {
                                    ch = REUtil.composeFromSurrogates(ch, target.charAt(++offset));
                                }
                                if (RegularExpression.isEOLChar(ch)) {
                                    return -1;
                                }
                            }
                            ++offset;
                        } else {
                            o1 = offset - 1;
                            if (o1 >= con.limit || o1 < 0) {
                                return -1;
                            }
                            int ch2 = target.charAt(o1);
                            if (RegularExpression.isSet(opts, 4)) {
                                if (REUtil.isLowSurrogate(ch2) && o1 - 1 >= 0) {
                                    // empty if block
                                }
                            } else {
                                if (REUtil.isLowSurrogate(ch2) && o1 - 1 >= 0) {
                                    ch2 = REUtil.composeFromSurrogates(target.charAt(--o1), ch2);
                                }
                                if (!RegularExpression.isEOLChar(ch2)) {
                                    return -1;
                                }
                            }
                            offset = --o1;
                        }
                        op = op.next;
                        continue block32;
                    }
                    case 3: 
                    case 4: {
                        int o1;
                        int ch;
                        if (dx > 0) {
                            if (offset >= con.limit) {
                                return -1;
                            }
                            ch = target.charAt(offset);
                            if (REUtil.isHighSurrogate(ch) && offset + 1 < con.limit) {
                                ch = REUtil.composeFromSurrogates(ch, target.charAt(++offset));
                            }
                            RangeToken tok = op.getToken();
                            if (RegularExpression.isSet(opts, 2)) {
                                if (!(tok = tok.getCaseInsensitiveToken()).match(ch)) {
                                    if (ch >= 65536) {
                                        return -1;
                                    }
                                    char uch = Character.toUpperCase((char)ch);
                                    if (!tok.match(uch) && !tok.match(Character.toLowerCase(uch))) {
                                        return -1;
                                    }
                                }
                            } else if (!tok.match(ch)) {
                                return -1;
                            }
                            ++offset;
                        } else {
                            o1 = offset - 1;
                            if (o1 >= con.limit || o1 < 0) {
                                return -1;
                            }
                            int ch3 = target.charAt(o1);
                            if (REUtil.isLowSurrogate(ch3) && o1 - 1 >= 0) {
                                ch3 = REUtil.composeFromSurrogates(target.charAt(--o1), ch3);
                            }
                            RangeToken tok = op.getToken();
                            if (RegularExpression.isSet(opts, 2)) {
                                if (!(tok = tok.getCaseInsensitiveToken()).match(ch3)) {
                                    if (ch3 >= 65536) {
                                        return -1;
                                    }
                                    char uch = Character.toUpperCase((char)ch3);
                                    if (!tok.match(uch) && !tok.match(Character.toLowerCase(uch))) {
                                        return -1;
                                    }
                                }
                            } else if (!tok.match(ch3)) {
                                return -1;
                            }
                            offset = o1;
                        }
                        op = op.next;
                        continue block32;
                    }
                    case 5: {
                        boolean go = false;
                        switch (op.getData()) {
                            case 94: {
                                if (!(RegularExpression.isSet(opts, 8) ? offset != con.start && (offset <= con.start || !RegularExpression.isEOLChar(target.charAt(offset - 1))) : offset != con.start)) break;
                                return -1;
                            }
                            case 64: {
                                if (offset == con.start || offset > con.start && RegularExpression.isEOLChar(target.charAt(offset - 1))) break;
                                return -1;
                            }
                            case 36: {
                                if (!(RegularExpression.isSet(opts, 8) ? offset != con.limit && (offset >= con.limit || !RegularExpression.isEOLChar(target.charAt(offset))) : !(offset == con.limit || offset + 1 == con.limit && RegularExpression.isEOLChar(target.charAt(offset)) || offset + 2 == con.limit && target.charAt(offset) == '\r' && target.charAt(offset + 1) == '\n'))) break;
                                return -1;
                            }
                            case 65: {
                                if (offset == con.start) break;
                                return -1;
                            }
                            case 90: {
                                if (offset == con.limit || offset + 1 == con.limit && RegularExpression.isEOLChar(target.charAt(offset)) || offset + 2 == con.limit && target.charAt(offset) == '\r' && target.charAt(offset + 1) == '\n') break;
                                return -1;
                            }
                            case 122: {
                                if (offset == con.limit) break;
                                return -1;
                            }
                            case 98: {
                                if (con.length == 0) {
                                    return -1;
                                }
                                int after = RegularExpression.getWordType(target, con.start, con.limit, offset, opts);
                                if (after == 0) {
                                    return -1;
                                }
                                int before = RegularExpression.getPreviousWordType(target, con.start, con.limit, offset, opts);
                                if (after != before) break;
                                return -1;
                            }
                            case 66: {
                                if (con.length == 0) {
                                    go = true;
                                } else {
                                    int after = RegularExpression.getWordType(target, con.start, con.limit, offset, opts);
                                    boolean bl = go = after == 0 || after == RegularExpression.getPreviousWordType(target, con.start, con.limit, offset, opts);
                                }
                                if (go) break;
                                return -1;
                            }
                            case 60: {
                                if (con.length == 0 || offset == con.limit) {
                                    return -1;
                                }
                                if (RegularExpression.getWordType(target, con.start, con.limit, offset, opts) == 1 && RegularExpression.getPreviousWordType(target, con.start, con.limit, offset, opts) == 2) break;
                                return -1;
                            }
                            case 62: {
                                if (con.length == 0 || offset == con.start) {
                                    return -1;
                                }
                                if (RegularExpression.getWordType(target, con.start, con.limit, offset, opts) == 2 && RegularExpression.getPreviousWordType(target, con.start, con.limit, offset, opts) == 1) break;
                                return -1;
                            }
                        }
                        op = op.next;
                        continue block32;
                    }
                    case 16: {
                        int refno = op.getData();
                        if (refno <= 0 || refno >= this.nofparen) {
                            throw new RuntimeException("Internal Error: Reference number must be more than zero: " + refno);
                        }
                        if (con.match.getBeginning(refno) < 0 || con.match.getEnd(refno) < 0) {
                            return -1;
                        }
                        int o2 = con.match.getBeginning(refno);
                        int literallen = con.match.getEnd(refno) - o2;
                        if (!RegularExpression.isSet(opts, 2)) {
                            if (dx > 0) {
                                if (!RegularExpression.regionMatches(target, offset, con.limit, o2, literallen)) {
                                    return -1;
                                }
                                offset += literallen;
                            } else {
                                if (!RegularExpression.regionMatches(target, offset - literallen, con.limit, o2, literallen)) {
                                    return -1;
                                }
                                offset -= literallen;
                            }
                        } else if (dx > 0) {
                            if (!RegularExpression.regionMatchesIgnoreCase(target, offset, con.limit, o2, literallen)) {
                                return -1;
                            }
                            offset += literallen;
                        } else {
                            if (!RegularExpression.regionMatchesIgnoreCase(target, offset - literallen, con.limit, o2, literallen)) {
                                return -1;
                            }
                            offset -= literallen;
                        }
                        op = op.next;
                        continue block32;
                    }
                    case 6: {
                        String literal = op.getString();
                        int literallen = literal.length();
                        if (!RegularExpression.isSet(opts, 2)) {
                            if (dx > 0) {
                                if (!RegularExpression.regionMatches(target, offset, con.limit, literal, literallen)) {
                                    return -1;
                                }
                                offset += literallen;
                            } else {
                                if (!RegularExpression.regionMatches(target, offset - literallen, con.limit, literal, literallen)) {
                                    return -1;
                                }
                                offset -= literallen;
                            }
                        } else if (dx > 0) {
                            if (!RegularExpression.regionMatchesIgnoreCase(target, offset, con.limit, literal, literallen)) {
                                return -1;
                            }
                            offset += literallen;
                        } else {
                            if (!RegularExpression.regionMatchesIgnoreCase(target, offset - literallen, con.limit, literal, literallen)) {
                                return -1;
                            }
                            offset -= literallen;
                        }
                        op = op.next;
                        continue block32;
                    }
                    case 7: {
                        int id = op.getData();
                        if (id >= 0) {
                            int previousOffset = con.offsets[id];
                            if (previousOffset < 0 || previousOffset != offset) {
                                con.offsets[id] = offset;
                            } else {
                                con.offsets[id] = -1;
                                op = op.next;
                                continue block32;
                            }
                        }
                        int ret = this.matchString(con, op.getChild(), offset, dx, opts);
                        if (id >= 0) {
                            con.offsets[id] = -1;
                        }
                        if (ret >= 0) {
                            return ret;
                        }
                        op = op.next;
                        continue block32;
                    }
                    case 9: {
                        int ret = this.matchString(con, op.getChild(), offset, dx, opts);
                        if (ret >= 0) {
                            return ret;
                        }
                        op = op.next;
                        continue block32;
                    }
                    case 8: 
                    case 10: {
                        int ret = this.matchString(con, op.next, offset, dx, opts);
                        if (ret >= 0) {
                            return ret;
                        }
                        op = op.getChild();
                        continue block32;
                    }
                    case 11: {
                        int i = 0;
                        while (i < op.size()) {
                            int ret = this.matchString(con, op.elementAt(i), offset, dx, opts);
                            if (ret >= 0) {
                                return ret;
                            }
                            ++i;
                        }
                        return -1;
                    }
                    case 15: {
                        int ret;
                        int refno = op.getData();
                        if (con.match != null && refno > 0) {
                            int save = con.match.getBeginning(refno);
                            con.match.setBeginning(refno, offset);
                            ret = this.matchString(con, op.next, offset, dx, opts);
                            if (ret < 0) {
                                con.match.setBeginning(refno, save);
                            }
                            return ret;
                        }
                        if (con.match != null && refno < 0) {
                            int index = -refno;
                            int save = con.match.getEnd(index);
                            con.match.setEnd(index, offset);
                            int ret2 = this.matchString(con, op.next, offset, dx, opts);
                            if (ret2 < 0) {
                                con.match.setEnd(index, save);
                            }
                            return ret2;
                        }
                        op = op.next;
                        continue block32;
                    }
                    case 20: {
                        if (this.matchString(con, op.getChild(), offset, 1, opts) < 0) {
                            return -1;
                        }
                        op = op.next;
                        continue block32;
                    }
                    case 21: {
                        if (this.matchString(con, op.getChild(), offset, 1, opts) >= 0) {
                            return -1;
                        }
                        op = op.next;
                        continue block32;
                    }
                    case 22: {
                        if (this.matchString(con, op.getChild(), offset, -1, opts) < 0) {
                            return -1;
                        }
                        op = op.next;
                        continue block32;
                    }
                    case 23: {
                        if (this.matchString(con, op.getChild(), offset, -1, opts) >= 0) {
                            return -1;
                        }
                        op = op.next;
                        continue block32;
                    }
                    case 24: {
                        int ret = this.matchString(con, op.getChild(), offset, dx, opts);
                        if (ret < 0) {
                            return ret;
                        }
                        offset = ret;
                        op = op.next;
                        continue block32;
                    }
                    case 25: {
                        int localopts = opts;
                        localopts |= op.getData();
                        int ret = this.matchString(con, op.getChild(), offset, dx, localopts &= ~op.getData2());
                        if (ret < 0) {
                            return ret;
                        }
                        offset = ret;
                        op = op.next;
                        continue block32;
                    }
                    case 26: {
                        Op.ConditionOp cop = (Op.ConditionOp)op;
                        boolean matchp = false;
                        if (cop.refNumber > 0) {
                            if (cop.refNumber >= this.nofparen) {
                                throw new RuntimeException("Internal Error: Reference number must be more than zero: " + cop.refNumber);
                            }
                            matchp = con.match.getBeginning(cop.refNumber) >= 0 && con.match.getEnd(cop.refNumber) >= 0;
                        } else {
                            boolean bl = matchp = this.matchString(con, cop.condition, offset, dx, opts) >= 0;
                        }
                        if (matchp) {
                            op = cop.yes;
                            continue block32;
                        }
                        if (cop.no != null) {
                            op = cop.no;
                            continue block32;
                        }
                        op = cop.next;
                        continue block32;
                    }
                }
                break;
            }
            throw new RuntimeException("Unknown operation type: " + op.type);
        }

        private static final int getPreviousWordType(String target, int begin, int end, int offset, int opts) {
            int ret = RegularExpression.getWordType(target, begin, end, --offset, opts);
            while (ret == 0) {
                ret = RegularExpression.getWordType(target, begin, end, --offset, opts);
            }
            return ret;
        }

        private static final int getWordType(String target, int begin, int end, int offset, int opts) {
            if (offset < begin || offset >= end) {
                return 2;
            }
            return RegularExpression.getWordType0(target.charAt(offset), opts);
        }

        private static final boolean regionMatches(String text, int offset, int limit, String part, int partlen) {
            if (limit - offset < partlen) {
                return false;
            }
            return text.regionMatches(offset, part, 0, partlen);
        }

        private static final boolean regionMatches(String text, int offset, int limit, int offset2, int partlen) {
            if (limit - offset < partlen) {
                return false;
            }
            return text.regionMatches(offset, text, offset2, partlen);
        }

        private static final boolean regionMatchesIgnoreCase(String text, int offset, int limit, String part, int partlen) {
            return text.regionMatches(true, offset, part, 0, partlen);
        }

        private static final boolean regionMatchesIgnoreCase(String text, int offset, int limit, int offset2, int partlen) {
            if (limit - offset < partlen) {
                return false;
            }
            return text.regionMatches(true, offset, text, offset2, partlen);
        }

        public boolean matches(CharacterIterator target) {
            return this.matches(target, null);
        }

        /*
         * WARNING - Removed try catching itself - possible behaviour change.
         */
        public boolean matches(CharacterIterator target, Match match) {
            int matchStart;
            int o;
            int start = target.getBeginIndex();
            int end = target.getEndIndex();
            RegularExpression regularExpression = this;
            synchronized (regularExpression) {
                if (this.operations == null) {
                    this.prepare();
                }
                if (this.context == null) {
                    this.context = new Context();
                }
            }
            Context con = null;
            Context context = this.context;
            synchronized (context) {
                con = this.context.inuse ? new Context() : this.context;
                con.reset(target, start, end, this.numberOfClosures);
            }
            if (match != null) {
                match.setNumberOfGroups(this.nofparen);
                match.setSource(target);
            } else if (this.hasBackReferences) {
                match = new Match();
                match.setNumberOfGroups(this.nofparen);
            }
            con.match = match;
            if (RegularExpression.isSet(this.options, 512)) {
                int matchEnd = this.matchCharacterIterator(con, this.operations, con.start, 1, this.options);
                if (matchEnd == con.limit) {
                    if (con.match != null) {
                        con.match.setBeginning(0, con.start);
                        con.match.setEnd(0, matchEnd);
                    }
                    con.inuse = false;
                    return true;
                }
                return false;
            }
            if (this.fixedStringOnly) {
                int o2 = this.fixedStringTable.matches(target, con.start, con.limit);
                if (o2 >= 0) {
                    if (con.match != null) {
                        con.match.setBeginning(0, o2);
                        con.match.setEnd(0, o2 + this.fixedString.length());
                    }
                    con.inuse = false;
                    return true;
                }
                con.inuse = false;
                return false;
            }
            if (this.fixedString != null && (o = this.fixedStringTable.matches(target, con.start, con.limit)) < 0) {
                con.inuse = false;
                return false;
            }
            int limit = con.limit - this.minlength;
            int matchEnd = -1;
            if (this.operations != null && this.operations.type == 7 && this.operations.getChild().type == 0) {
                if (RegularExpression.isSet(this.options, 4)) {
                    matchStart = con.start;
                    matchEnd = this.matchCharacterIterator(con, this.operations, con.start, 1, this.options);
                } else {
                    boolean previousIsEOL = true;
                    matchStart = con.start;
                    while (matchStart <= limit) {
                        char ch = target.setIndex(matchStart);
                        if (RegularExpression.isEOLChar(ch)) {
                            previousIsEOL = true;
                        } else {
                            if (previousIsEOL && (matchEnd = this.matchCharacterIterator(con, this.operations, matchStart, 1, this.options)) >= 0) break;
                            previousIsEOL = false;
                        }
                        ++matchStart;
                    }
                }
            } else if (this.firstChar != null) {
                RangeToken range = this.firstChar;
                if (RegularExpression.isSet(this.options, 2)) {
                    range = this.firstChar.getCaseInsensitiveToken();
                    matchStart = con.start;
                    while (matchStart <= limit) {
                        char ch1;
                        int ch = target.setIndex(matchStart);
                        if (!(!REUtil.isHighSurrogate(ch) || matchStart + 1 >= con.limit ? !range.match(ch) && !range.match(ch1 = Character.toUpperCase((char)ch)) && !range.match(Character.toLowerCase(ch1)) : !range.match(ch = REUtil.composeFromSurrogates(ch, target.setIndex(matchStart + 1))))) {
                            matchEnd = this.matchCharacterIterator(con, this.operations, matchStart, 1, this.options);
                            if (matchEnd >= 0) break;
                        }
                        ++matchStart;
                    }
                } else {
                    matchStart = con.start;
                    while (matchStart <= limit) {
                        int ch = target.setIndex(matchStart);
                        if (REUtil.isHighSurrogate(ch) && matchStart + 1 < con.limit) {
                            ch = REUtil.composeFromSurrogates(ch, target.setIndex(matchStart + 1));
                        }
                        if (!range.match(ch) || (matchEnd = this.matchCharacterIterator(con, this.operations, matchStart, 1, this.options)) < 0) {
                            ++matchStart;
                            continue;
                        }
                        break;
                    }
                }
            } else {
                matchStart = con.start;
                while (matchStart <= limit) {
                    matchEnd = this.matchCharacterIterator(con, this.operations, matchStart, 1, this.options);
                    if (matchEnd < 0) {
                        ++matchStart;
                        continue;
                    }
                    break;
                }
            }
            if (matchEnd >= 0) {
                if (con.match != null) {
                    con.match.setBeginning(0, matchStart);
                    con.match.setEnd(0, matchEnd);
                }
                con.inuse = false;
                return true;
            }
            con.inuse = false;
            return false;
        }

        private int matchCharacterIterator(Context con, Op op, int offset, int dx, int opts) {
            CharacterIterator target = con.ciTarget;
            block32: while (true) {
                if (op == null) {
                    return RegularExpression.isSet(opts, 512) && offset != con.limit ? -1 : offset;
                }
                if (offset > con.limit || offset < con.start) {
                    return -1;
                }
                switch (op.type) {
                    case 1: {
                        int ch;
                        if (RegularExpression.isSet(opts, 2)) {
                            ch = op.getData();
                            if (dx > 0) {
                                if (offset >= con.limit || !RegularExpression.matchIgnoreCase(ch, target.setIndex(offset))) {
                                    return -1;
                                }
                                ++offset;
                            } else {
                                int o1 = offset - 1;
                                if (o1 >= con.limit || o1 < 0 || !RegularExpression.matchIgnoreCase(ch, target.setIndex(o1))) {
                                    return -1;
                                }
                                offset = o1;
                            }
                        } else {
                            ch = op.getData();
                            if (dx > 0) {
                                if (offset >= con.limit || ch != target.setIndex(offset)) {
                                    return -1;
                                }
                                ++offset;
                            } else {
                                int o1 = offset - 1;
                                if (o1 >= con.limit || o1 < 0 || ch != target.setIndex(o1)) {
                                    return -1;
                                }
                                offset = o1;
                            }
                        }
                        op = op.next;
                        continue block32;
                    }
                    case 0: {
                        int o1;
                        int ch;
                        if (dx > 0) {
                            if (offset >= con.limit) {
                                return -1;
                            }
                            ch = target.setIndex(offset);
                            if (RegularExpression.isSet(opts, 4)) {
                                if (REUtil.isHighSurrogate(ch) && offset + 1 < con.limit) {
                                    ++offset;
                                }
                            } else {
                                if (REUtil.isHighSurrogate(ch) && offset + 1 < con.limit) {
                                    ch = REUtil.composeFromSurrogates(ch, target.setIndex(++offset));
                                }
                                if (RegularExpression.isEOLChar(ch)) {
                                    return -1;
                                }
                            }
                            ++offset;
                        } else {
                            o1 = offset - 1;
                            if (o1 >= con.limit || o1 < 0) {
                                return -1;
                            }
                            int ch2 = target.setIndex(o1);
                            if (RegularExpression.isSet(opts, 4)) {
                                if (REUtil.isLowSurrogate(ch2) && o1 - 1 >= 0) {
                                    // empty if block
                                }
                            } else {
                                if (REUtil.isLowSurrogate(ch2) && o1 - 1 >= 0) {
                                    ch2 = REUtil.composeFromSurrogates(target.setIndex(--o1), ch2);
                                }
                                if (!RegularExpression.isEOLChar(ch2)) {
                                    return -1;
                                }
                            }
                            offset = --o1;
                        }
                        op = op.next;
                        continue block32;
                    }
                    case 3: 
                    case 4: {
                        int o1;
                        int ch;
                        if (dx > 0) {
                            if (offset >= con.limit) {
                                return -1;
                            }
                            ch = target.setIndex(offset);
                            if (REUtil.isHighSurrogate(ch) && offset + 1 < con.limit) {
                                ch = REUtil.composeFromSurrogates(ch, target.setIndex(++offset));
                            }
                            RangeToken tok = op.getToken();
                            if (RegularExpression.isSet(opts, 2)) {
                                if (!(tok = tok.getCaseInsensitiveToken()).match(ch)) {
                                    if (ch >= 65536) {
                                        return -1;
                                    }
                                    char uch = Character.toUpperCase((char)ch);
                                    if (!tok.match(uch) && !tok.match(Character.toLowerCase(uch))) {
                                        return -1;
                                    }
                                }
                            } else if (!tok.match(ch)) {
                                return -1;
                            }
                            ++offset;
                        } else {
                            o1 = offset - 1;
                            if (o1 >= con.limit || o1 < 0) {
                                return -1;
                            }
                            int ch3 = target.setIndex(o1);
                            if (REUtil.isLowSurrogate(ch3) && o1 - 1 >= 0) {
                                ch3 = REUtil.composeFromSurrogates(target.setIndex(--o1), ch3);
                            }
                            RangeToken tok = op.getToken();
                            if (RegularExpression.isSet(opts, 2)) {
                                if (!(tok = tok.getCaseInsensitiveToken()).match(ch3)) {
                                    if (ch3 >= 65536) {
                                        return -1;
                                    }
                                    char uch = Character.toUpperCase((char)ch3);
                                    if (!tok.match(uch) && !tok.match(Character.toLowerCase(uch))) {
                                        return -1;
                                    }
                                }
                            } else if (!tok.match(ch3)) {
                                return -1;
                            }
                            offset = o1;
                        }
                        op = op.next;
                        continue block32;
                    }
                    case 5: {
                        boolean go = false;
                        switch (op.getData()) {
                            case 94: {
                                if (!(RegularExpression.isSet(opts, 8) ? offset != con.start && (offset <= con.start || !RegularExpression.isEOLChar(target.setIndex(offset - 1))) : offset != con.start)) break;
                                return -1;
                            }
                            case 64: {
                                if (offset == con.start || offset > con.start && RegularExpression.isEOLChar(target.setIndex(offset - 1))) break;
                                return -1;
                            }
                            case 36: {
                                if (!(RegularExpression.isSet(opts, 8) ? offset != con.limit && (offset >= con.limit || !RegularExpression.isEOLChar(target.setIndex(offset))) : !(offset == con.limit || offset + 1 == con.limit && RegularExpression.isEOLChar(target.setIndex(offset)) || offset + 2 == con.limit && target.setIndex(offset) == '\r' && target.setIndex(offset + 1) == '\n'))) break;
                                return -1;
                            }
                            case 65: {
                                if (offset == con.start) break;
                                return -1;
                            }
                            case 90: {
                                if (offset == con.limit || offset + 1 == con.limit && RegularExpression.isEOLChar(target.setIndex(offset)) || offset + 2 == con.limit && target.setIndex(offset) == '\r' && target.setIndex(offset + 1) == '\n') break;
                                return -1;
                            }
                            case 122: {
                                if (offset == con.limit) break;
                                return -1;
                            }
                            case 98: {
                                if (con.length == 0) {
                                    return -1;
                                }
                                int after = RegularExpression.getWordType(target, con.start, con.limit, offset, opts);
                                if (after == 0) {
                                    return -1;
                                }
                                int before = RegularExpression.getPreviousWordType(target, con.start, con.limit, offset, opts);
                                if (after != before) break;
                                return -1;
                            }
                            case 66: {
                                if (con.length == 0) {
                                    go = true;
                                } else {
                                    int after = RegularExpression.getWordType(target, con.start, con.limit, offset, opts);
                                    boolean bl = go = after == 0 || after == RegularExpression.getPreviousWordType(target, con.start, con.limit, offset, opts);
                                }
                                if (go) break;
                                return -1;
                            }
                            case 60: {
                                if (con.length == 0 || offset == con.limit) {
                                    return -1;
                                }
                                if (RegularExpression.getWordType(target, con.start, con.limit, offset, opts) == 1 && RegularExpression.getPreviousWordType(target, con.start, con.limit, offset, opts) == 2) break;
                                return -1;
                            }
                            case 62: {
                                if (con.length == 0 || offset == con.start) {
                                    return -1;
                                }
                                if (RegularExpression.getWordType(target, con.start, con.limit, offset, opts) == 2 && RegularExpression.getPreviousWordType(target, con.start, con.limit, offset, opts) == 1) break;
                                return -1;
                            }
                        }
                        op = op.next;
                        continue block32;
                    }
                    case 16: {
                        int refno = op.getData();
                        if (refno <= 0 || refno >= this.nofparen) {
                            throw new RuntimeException("Internal Error: Reference number must be more than zero: " + refno);
                        }
                        if (con.match.getBeginning(refno) < 0 || con.match.getEnd(refno) < 0) {
                            return -1;
                        }
                        int o2 = con.match.getBeginning(refno);
                        int literallen = con.match.getEnd(refno) - o2;
                        if (!RegularExpression.isSet(opts, 2)) {
                            if (dx > 0) {
                                if (!RegularExpression.regionMatches(target, offset, con.limit, o2, literallen)) {
                                    return -1;
                                }
                                offset += literallen;
                            } else {
                                if (!RegularExpression.regionMatches(target, offset - literallen, con.limit, o2, literallen)) {
                                    return -1;
                                }
                                offset -= literallen;
                            }
                        } else if (dx > 0) {
                            if (!RegularExpression.regionMatchesIgnoreCase(target, offset, con.limit, o2, literallen)) {
                                return -1;
                            }
                            offset += literallen;
                        } else {
                            if (!RegularExpression.regionMatchesIgnoreCase(target, offset - literallen, con.limit, o2, literallen)) {
                                return -1;
                            }
                            offset -= literallen;
                        }
                        op = op.next;
                        continue block32;
                    }
                    case 6: {
                        String literal = op.getString();
                        int literallen = literal.length();
                        if (!RegularExpression.isSet(opts, 2)) {
                            if (dx > 0) {
                                if (!RegularExpression.regionMatches(target, offset, con.limit, literal, literallen)) {
                                    return -1;
                                }
                                offset += literallen;
                            } else {
                                if (!RegularExpression.regionMatches(target, offset - literallen, con.limit, literal, literallen)) {
                                    return -1;
                                }
                                offset -= literallen;
                            }
                        } else if (dx > 0) {
                            if (!RegularExpression.regionMatchesIgnoreCase(target, offset, con.limit, literal, literallen)) {
                                return -1;
                            }
                            offset += literallen;
                        } else {
                            if (!RegularExpression.regionMatchesIgnoreCase(target, offset - literallen, con.limit, literal, literallen)) {
                                return -1;
                            }
                            offset -= literallen;
                        }
                        op = op.next;
                        continue block32;
                    }
                    case 7: {
                        int id = op.getData();
                        if (id >= 0) {
                            int previousOffset = con.offsets[id];
                            if (previousOffset < 0 || previousOffset != offset) {
                                con.offsets[id] = offset;
                            } else {
                                con.offsets[id] = -1;
                                op = op.next;
                                continue block32;
                            }
                        }
                        int ret = this.matchCharacterIterator(con, op.getChild(), offset, dx, opts);
                        if (id >= 0) {
                            con.offsets[id] = -1;
                        }
                        if (ret >= 0) {
                            return ret;
                        }
                        op = op.next;
                        continue block32;
                    }
                    case 9: {
                        int ret = this.matchCharacterIterator(con, op.getChild(), offset, dx, opts);
                        if (ret >= 0) {
                            return ret;
                        }
                        op = op.next;
                        continue block32;
                    }
                    case 8: 
                    case 10: {
                        int ret = this.matchCharacterIterator(con, op.next, offset, dx, opts);
                        if (ret >= 0) {
                            return ret;
                        }
                        op = op.getChild();
                        continue block32;
                    }
                    case 11: {
                        int i = 0;
                        while (i < op.size()) {
                            int ret = this.matchCharacterIterator(con, op.elementAt(i), offset, dx, opts);
                            if (ret >= 0) {
                                return ret;
                            }
                            ++i;
                        }
                        return -1;
                    }
                    case 15: {
                        int ret;
                        int refno = op.getData();
                        if (con.match != null && refno > 0) {
                            int save = con.match.getBeginning(refno);
                            con.match.setBeginning(refno, offset);
                            ret = this.matchCharacterIterator(con, op.next, offset, dx, opts);
                            if (ret < 0) {
                                con.match.setBeginning(refno, save);
                            }
                            return ret;
                        }
                        if (con.match != null && refno < 0) {
                            int index = -refno;
                            int save = con.match.getEnd(index);
                            con.match.setEnd(index, offset);
                            int ret2 = this.matchCharacterIterator(con, op.next, offset, dx, opts);
                            if (ret2 < 0) {
                                con.match.setEnd(index, save);
                            }
                            return ret2;
                        }
                        op = op.next;
                        continue block32;
                    }
                    case 20: {
                        if (this.matchCharacterIterator(con, op.getChild(), offset, 1, opts) < 0) {
                            return -1;
                        }
                        op = op.next;
                        continue block32;
                    }
                    case 21: {
                        if (this.matchCharacterIterator(con, op.getChild(), offset, 1, opts) >= 0) {
                            return -1;
                        }
                        op = op.next;
                        continue block32;
                    }
                    case 22: {
                        if (this.matchCharacterIterator(con, op.getChild(), offset, -1, opts) < 0) {
                            return -1;
                        }
                        op = op.next;
                        continue block32;
                    }
                    case 23: {
                        if (this.matchCharacterIterator(con, op.getChild(), offset, -1, opts) >= 0) {
                            return -1;
                        }
                        op = op.next;
                        continue block32;
                    }
                    case 24: {
                        int ret = this.matchCharacterIterator(con, op.getChild(), offset, dx, opts);
                        if (ret < 0) {
                            return ret;
                        }
                        offset = ret;
                        op = op.next;
                        continue block32;
                    }
                    case 25: {
                        int localopts = opts;
                        localopts |= op.getData();
                        int ret = this.matchCharacterIterator(con, op.getChild(), offset, dx, localopts &= ~op.getData2());
                        if (ret < 0) {
                            return ret;
                        }
                        offset = ret;
                        op = op.next;
                        continue block32;
                    }
                    case 26: {
                        Op.ConditionOp cop = (Op.ConditionOp)op;
                        boolean matchp = false;
                        if (cop.refNumber > 0) {
                            if (cop.refNumber >= this.nofparen) {
                                throw new RuntimeException("Internal Error: Reference number must be more than zero: " + cop.refNumber);
                            }
                            matchp = con.match.getBeginning(cop.refNumber) >= 0 && con.match.getEnd(cop.refNumber) >= 0;
                        } else {
                            boolean bl = matchp = this.matchCharacterIterator(con, cop.condition, offset, dx, opts) >= 0;
                        }
                        if (matchp) {
                            op = cop.yes;
                            continue block32;
                        }
                        if (cop.no != null) {
                            op = cop.no;
                            continue block32;
                        }
                        op = cop.next;
                        continue block32;
                    }
                }
                break;
            }
            throw new RuntimeException("Unknown operation type: " + op.type);
        }

        private static final int getPreviousWordType(CharacterIterator target, int begin, int end, int offset, int opts) {
            int ret = RegularExpression.getWordType(target, begin, end, --offset, opts);
            while (ret == 0) {
                ret = RegularExpression.getWordType(target, begin, end, --offset, opts);
            }
            return ret;
        }

        private static final int getWordType(CharacterIterator target, int begin, int end, int offset, int opts) {
            if (offset < begin || offset >= end) {
                return 2;
            }
            return RegularExpression.getWordType0(target.setIndex(offset), opts);
        }

        private static final boolean regionMatches(CharacterIterator target, int offset, int limit, String part, int partlen) {
            if (offset < 0) {
                return false;
            }
            if (limit - offset < partlen) {
                return false;
            }
            int i = 0;
            while (partlen-- > 0) {
                if (target.setIndex(offset++) == part.charAt(i++)) continue;
                return false;
            }
            return true;
        }

        private static final boolean regionMatches(CharacterIterator target, int offset, int limit, int offset2, int partlen) {
            if (offset < 0) {
                return false;
            }
            if (limit - offset < partlen) {
                return false;
            }
            int i = offset2;
            while (partlen-- > 0) {
                if (target.setIndex(offset++) == target.setIndex(i++)) continue;
                return false;
            }
            return true;
        }

        private static final boolean regionMatchesIgnoreCase(CharacterIterator target, int offset, int limit, String part, int partlen) {
            if (offset < 0) {
                return false;
            }
            if (limit - offset < partlen) {
                return false;
            }
            int i = 0;
            while (partlen-- > 0) {
                char uch2;
                char uch1;
                char ch2;
                char ch1;
                if ((ch1 = target.setIndex(offset++)) == (ch2 = part.charAt(i++)) || (uch1 = Character.toUpperCase(ch1)) == (uch2 = Character.toUpperCase(ch2)) || Character.toLowerCase(uch1) == Character.toLowerCase(uch2)) continue;
                return false;
            }
            return true;
        }

        private static final boolean regionMatchesIgnoreCase(CharacterIterator target, int offset, int limit, int offset2, int partlen) {
            if (offset < 0) {
                return false;
            }
            if (limit - offset < partlen) {
                return false;
            }
            int i = offset2;
            while (partlen-- > 0) {
                char uch2;
                char uch1;
                char ch2;
                char ch1;
                if ((ch1 = target.setIndex(offset++)) == (ch2 = target.setIndex(i++)) || (uch1 = Character.toUpperCase(ch1)) == (uch2 = Character.toUpperCase(ch2)) || Character.toLowerCase(uch1) == Character.toLowerCase(uch2)) continue;
                return false;
            }
            return true;
        }

        void prepare() {
            RangeToken firstChar;
            int fresult;
            this.compile(this.tokentree);
            this.minlength = this.tokentree.getMinLength();
            this.firstChar = null;
            if (!RegularExpression.isSet(this.options, 128) && !RegularExpression.isSet(this.options, 512) && (fresult = this.tokentree.analyzeFirstCharacter(firstChar = Token.createRange(), this.options)) == 1) {
                firstChar.compactRanges();
                this.firstChar = firstChar;
            }
            if (this.operations != null && (this.operations.type == 6 || this.operations.type == 1) && this.operations.next == null) {
                this.fixedStringOnly = true;
                if (this.operations.type == 6) {
                    this.fixedString = this.operations.getString();
                } else if (this.operations.getData() >= 65536) {
                    this.fixedString = REUtil.decomposeToSurrogates(this.operations.getData());
                } else {
                    char[] ac = new char[]{(char)this.operations.getData()};
                    this.fixedString = new String(ac);
                }
                this.fixedStringOptions = this.options;
                this.fixedStringTable = new BMPattern(this.fixedString, 256, RegularExpression.isSet(this.fixedStringOptions, 2));
            } else if (!RegularExpression.isSet(this.options, 256) && !RegularExpression.isSet(this.options, 512)) {
                Token.FixedStringContainer container = new Token.FixedStringContainer();
                this.tokentree.findFixedString(container, this.options);
                this.fixedString = container.token == null ? null : container.token.getString();
                this.fixedStringOptions = container.options;
                if (this.fixedString != null && this.fixedString.length() < 2) {
                    this.fixedString = null;
                }
                if (this.fixedString != null) {
                    this.fixedStringTable = new BMPattern(this.fixedString, 256, RegularExpression.isSet(this.fixedStringOptions, 2));
                }
            }
        }

        private static final boolean isSet(int options, int flag) {
            return (options & flag) == flag;
        }

        public RegularExpression(String regex) throws ParseException {
            this.setPattern(regex, null);
        }

        public RegularExpression(String regex, String options) throws ParseException {
            this.setPattern(regex, options);
        }

        RegularExpression(String regex, Token tok, int parens, boolean hasBackReferences, int options) {
            this.regex = regex;
            this.tokentree = tok;
            this.nofparen = parens;
            this.options = options;
            this.hasBackReferences = hasBackReferences;
        }

        public void setPattern(String newPattern) throws ParseException {
            this.setPattern(newPattern, this.options);
        }

        private void setPattern(String newPattern, int options) throws ParseException {
            this.regex = newPattern;
            this.options = options;
            RegexParser rp = RegularExpression.isSet(this.options, 512) ? new ParserForXMLSchema() : new RegexParser();
            this.tokentree = rp.parse(this.regex, this.options);
            this.nofparen = rp.parennumber;
            this.hasBackReferences = rp.hasBackReferences;
            this.operations = null;
            this.context = null;
        }

        public void setPattern(String newPattern, String options) throws ParseException {
            this.setPattern(newPattern, REUtil.parseOptions(options));
        }

        public String getPattern() {
            return this.regex;
        }

        public String toString() {
            return this.tokentree.toString(this.options);
        }

        public String getOptions() {
            return REUtil.createOptionString(this.options);
        }

        public boolean equals(Object obj) {
            if (obj == null) {
                return false;
            }
            if (!(obj instanceof RegularExpression)) {
                return false;
            }
            RegularExpression r = (RegularExpression)obj;
            return this.regex.equals(r.regex) && this.options == r.options;
        }

        boolean equals(String pattern, int options) {
            return this.regex.equals(pattern) && this.options == options;
        }

        public int hashCode() {
            return (String.valueOf(this.regex) + "/" + this.getOptions()).hashCode();
        }

        public int getNumberOfGroups() {
            return this.nofparen;
        }

        private static final int getWordType0(char ch, int opts) {
            if (!RegularExpression.isSet(opts, 64)) {
                if (RegularExpression.isSet(opts, 32)) {
                    return Token.getRange("IsWord", true).match(ch) ? 1 : 2;
                }
                return RegularExpression.isWordChar(ch) ? 1 : 2;
            }
            switch (Character.getType(ch)) {
                case 1: 
                case 2: 
                case 3: 
                case 4: 
                case 5: 
                case 8: 
                case 9: 
                case 10: 
                case 11: {
                    return 1;
                }
                case 6: 
                case 7: 
                case 16: {
                    return 0;
                }
                case 15: {
                    switch (ch) {
                        case '\t': 
                        case '\n': 
                        case '\u000b': 
                        case '\f': 
                        case '\r': {
                            return 2;
                        }
                    }
                    return 0;
                }
            }
            return 2;
        }

        private static final boolean isEOLChar(int ch) {
            return ch == 10 || ch == 13 || ch == 8232 || ch == 8233;
        }

        private static final boolean isWordChar(int ch) {
            if (ch == 95) {
                return true;
            }
            if (ch < 48) {
                return false;
            }
            if (ch > 122) {
                return false;
            }
            if (ch <= 57) {
                return true;
            }
            if (ch < 65) {
                return false;
            }
            if (ch <= 90) {
                return true;
            }
            return ch >= 97;
        }

        private static final boolean matchIgnoreCase(int chardata, int ch) {
            char uch2;
            if (chardata == ch) {
                return true;
            }
            if (chardata > 65535 || ch > 65535) {
                return false;
            }
            char uch1 = Character.toUpperCase((char)chardata);
            if (uch1 == (uch2 = Character.toUpperCase((char)ch))) {
                return true;
            }
            return Character.toLowerCase(uch1) == Character.toLowerCase(uch2);
        }

        static final class Context {
            CharacterIterator ciTarget;
            String strTarget;
            char[] charTarget;
            int start;
            int limit;
            int length;
            Match match;
            boolean inuse = false;
            int[] offsets;

            Context() {
            }

            private void resetCommon(int nofclosures) {
                this.length = this.limit - this.start;
                this.inuse = true;
                this.match = null;
                if (this.offsets == null || this.offsets.length != nofclosures) {
                    this.offsets = new int[nofclosures];
                }
                int i = 0;
                while (i < nofclosures) {
                    this.offsets[i] = -1;
                    ++i;
                }
            }

            void reset(CharacterIterator target, int start, int limit, int nofclosures) {
                this.ciTarget = target;
                this.start = start;
                this.limit = limit;
                this.resetCommon(nofclosures);
            }

            void reset(String target, int start, int limit, int nofclosures) {
                this.strTarget = target;
                this.start = start;
                this.limit = limit;
                this.resetCommon(nofclosures);
            }

            void reset(char[] target, int start, int limit, int nofclosures) {
                this.charTarget = target;
                this.start = start;
                this.limit = limit;
                this.resetCommon(nofclosures);
            }
        }
    }

    static class Token
    implements Serializable {
        private static final long serialVersionUID = 1L;
        static final boolean COUNTTOKENS = true;
        static int tokens = 0;
        static final int CHAR = 0;
        static final int DOT = 11;
        static final int CONCAT = 1;
        static final int UNION = 2;
        static final int CLOSURE = 3;
        static final int RANGE = 4;
        static final int NRANGE = 5;
        static final int PAREN = 6;
        static final int EMPTY = 7;
        static final int ANCHOR = 8;
        static final int NONGREEDYCLOSURE = 9;
        static final int STRING = 10;
        static final int BACKREFERENCE = 12;
        static final int LOOKAHEAD = 20;
        static final int NEGATIVELOOKAHEAD = 21;
        static final int LOOKBEHIND = 22;
        static final int NEGATIVELOOKBEHIND = 23;
        static final int INDEPENDENT = 24;
        static final int MODIFIERGROUP = 25;
        static final int CONDITION = 26;
        static final int UTF16_MAX = 0x10FFFF;
        int type;
        static Token token_dot;
        static Token token_0to9;
        static Token token_wordchars;
        static Token token_not_0to9;
        static Token token_not_wordchars;
        static Token token_spaces;
        static Token token_not_spaces;
        static Token token_empty;
        static Token token_linebeginning;
        static Token token_linebeginning2;
        static Token token_lineend;
        static Token token_stringbeginning;
        static Token token_stringend;
        static Token token_stringend2;
        static Token token_wordedge;
        static Token token_not_wordedge;
        static Token token_wordbeginning;
        static Token token_wordend;
        static final int FC_CONTINUE = 0;
        static final int FC_TERMINAL = 1;
        static final int FC_ANY = 2;
        private static final Hashtable<String, Token> categories;
        private static final Hashtable<String, Token> categories2;
        private static final String[] categoryNames;
        static final int CHAR_INIT_QUOTE = 29;
        static final int CHAR_FINAL_QUOTE = 30;
        static final int CHAR_LETTER = 31;
        static final int CHAR_MARK = 32;
        static final int CHAR_NUMBER = 33;
        static final int CHAR_SEPARATOR = 34;
        static final int CHAR_OTHER = 35;
        static final int CHAR_PUNCTUATION = 36;
        static final int CHAR_SYMBOL = 37;
        private static final String[] blockNames;
        static final String blockRanges = "\u0000\u007f\u0080\u00ff\u0100\u017f\u0180\u024f\u0250\u02af\u02b0\u02ff\u0300\u036f\u0370\u03ff\u0400\u04ff\u0530\u058f\u0590\u05ff\u0600\u06ff\u0700\u074f\u0780\u07bf\u0900\u097f\u0980\u09ff\u0a00\u0a7f\u0a80\u0aff\u0b00\u0b7f\u0b80\u0bff\u0c00\u0c7f\u0c80\u0cff\u0d00\u0d7f\u0d80\u0dff\u0e00\u0e7f\u0e80\u0eff\u0f00\u0fff\u1000\u109f\u10a0\u10ff\u1100\u11ff\u1200\u137f\u13a0\u13ff\u1400\u167f\u1680\u169f\u16a0\u16ff\u1780\u17ff\u1800\u18af\u1e00\u1eff\u1f00\u1fff\u2000\u206f\u2070\u209f\u20a0\u20cf\u20d0\u20ff\u2100\u214f\u2150\u218f\u2190\u21ff\u2200\u22ff\u2300\u23ff\u2400\u243f\u2440\u245f\u2460\u24ff\u2500\u257f\u2580\u259f\u25a0\u25ff\u2600\u26ff\u2700\u27bf\u2800\u28ff\u2e80\u2eff\u2f00\u2fdf\u2ff0\u2fff\u3000\u303f\u3040\u309f\u30a0\u30ff\u3100\u312f\u3130\u318f\u3190\u319f\u31a0\u31bf\u3200\u32ff\u3300\u33ff\u3400\u4db5\u4e00\u9fff\ua000\ua48f\ua490\ua4cf\uac00\ud7a3\ue000\uf8ff\uf900\ufaff\ufb00\ufb4f\ufb50\ufdff\ufe20\ufe2f\ufe30\ufe4f\ufe50\ufe6f\ufe70\ufefe\ufeff\ufeff\uff00\uffef";
        static final int[] nonBMPBlockRanges;
        private static final int NONBMP_BLOCK_START = 84;
        static Hashtable<String, String> nonxs;
        static final String viramaString = "\u094d\u09cd\u0a4d\u0acd\u0b4d\u0bcd\u0c4d\u0ccd\u0d4d\u0e3a\u0f84";
        private static Token token_grapheme;
        private static Token token_ccs;

        static {
            token_empty = new Token(7);
            token_linebeginning = Token.createAnchor(94);
            token_linebeginning2 = Token.createAnchor(64);
            token_lineend = Token.createAnchor(36);
            token_stringbeginning = Token.createAnchor(65);
            token_stringend = Token.createAnchor(122);
            token_stringend2 = Token.createAnchor(90);
            token_wordedge = Token.createAnchor(98);
            token_not_wordedge = Token.createAnchor(66);
            token_wordbeginning = Token.createAnchor(60);
            token_wordend = Token.createAnchor(62);
            token_dot = new Token(11);
            token_0to9 = Token.createRange();
            token_0to9.addRange(48, 57);
            token_wordchars = Token.createRange();
            token_wordchars.addRange(48, 57);
            token_wordchars.addRange(65, 90);
            token_wordchars.addRange(95, 95);
            token_wordchars.addRange(97, 122);
            token_spaces = Token.createRange();
            token_spaces.addRange(9, 9);
            token_spaces.addRange(10, 10);
            token_spaces.addRange(12, 12);
            token_spaces.addRange(13, 13);
            token_spaces.addRange(32, 32);
            token_not_0to9 = Token.complementRanges(token_0to9);
            token_not_wordchars = Token.complementRanges(token_wordchars);
            token_not_spaces = Token.complementRanges(token_spaces);
            categories = new Hashtable();
            categories2 = new Hashtable();
            String[] stringArray = new String[38];
            stringArray[0] = "Cn";
            stringArray[1] = "Lu";
            stringArray[2] = "Ll";
            stringArray[3] = "Lt";
            stringArray[4] = "Lm";
            stringArray[5] = "Lo";
            stringArray[6] = "Mn";
            stringArray[7] = "Me";
            stringArray[8] = "Mc";
            stringArray[9] = "Nd";
            stringArray[10] = "Nl";
            stringArray[11] = "No";
            stringArray[12] = "Zs";
            stringArray[13] = "Zl";
            stringArray[14] = "Zp";
            stringArray[15] = "Cc";
            stringArray[16] = "Cf";
            stringArray[18] = "Co";
            stringArray[19] = "Cs";
            stringArray[20] = "Pd";
            stringArray[21] = "Ps";
            stringArray[22] = "Pe";
            stringArray[23] = "Pc";
            stringArray[24] = "Po";
            stringArray[25] = "Sm";
            stringArray[26] = "Sc";
            stringArray[27] = "Sk";
            stringArray[28] = "So";
            stringArray[29] = "Pi";
            stringArray[30] = "Pf";
            stringArray[31] = "L";
            stringArray[32] = "M";
            stringArray[33] = "N";
            stringArray[34] = "Z";
            stringArray[35] = "C";
            stringArray[36] = "P";
            stringArray[37] = "S";
            categoryNames = stringArray;
            blockNames = new String[]{"Basic Latin", "Latin-1 Supplement", "Latin Extended-A", "Latin Extended-B", "IPA Extensions", "Spacing Modifier Letters", "Combining Diacritical Marks", "Greek", "Cyrillic", "Armenian", "Hebrew", "Arabic", "Syriac", "Thaana", "Devanagari", "Bengali", "Gurmukhi", "Gujarati", "Oriya", "Tamil", "Telugu", "Kannada", "Malayalam", "Sinhala", "Thai", "Lao", "Tibetan", "Myanmar", "Georgian", "Hangul Jamo", "Ethiopic", "Cherokee", "Unified Canadian Aboriginal Syllabics", "Ogham", "Runic", "Khmer", "Mongolian", "Latin Extended Additional", "Greek Extended", "General Punctuation", "Superscripts and Subscripts", "Currency Symbols", "Combining Marks for Symbols", "Letterlike Symbols", "Number Forms", "Arrows", "Mathematical Operators", "Miscellaneous Technical", "Control Pictures", "Optical Character Recognition", "Enclosed Alphanumerics", "Box Drawing", "Block Elements", "Geometric Shapes", "Miscellaneous Symbols", "Dingbats", "Braille Patterns", "CJK Radicals Supplement", "Kangxi Radicals", "Ideographic Description Characters", "CJK Symbols and Punctuation", "Hiragana", "Katakana", "Bopomofo", "Hangul Compatibility Jamo", "Kanbun", "Bopomofo Extended", "Enclosed CJK Letters and Months", "CJK Compatibility", "CJK Unified Ideographs Extension A", "CJK Unified Ideographs", "Yi Syllables", "Yi Radicals", "Hangul Syllables", "Private Use", "CJK Compatibility Ideographs", "Alphabetic Presentation Forms", "Arabic Presentation Forms-A", "Combining Half Marks", "CJK Compatibility Forms", "Small Form Variants", "Arabic Presentation Forms-B", "Specials", "Halfwidth and Fullwidth Forms", "Old Italic", "Gothic", "Deseret", "Byzantine Musical Symbols", "Musical Symbols", "Mathematical Alphanumeric Symbols", "CJK Unified Ideographs Extension B", "CJK Compatibility Ideographs Supplement", "Tags"};
            nonBMPBlockRanges = new int[]{66304, 66351, 66352, 66383, 66560, 66639, 118784, 119039, 119040, 119295, 119808, 120831, 131072, 173782, 194560, 195103, 917504, 917631};
            nonxs = null;
            token_grapheme = null;
            token_ccs = null;
        }

        static ParenToken createLook(int type, Token child) {
            ++tokens;
            return new ParenToken(type, child, 0);
        }

        static ParenToken createParen(Token child, int pnumber) {
            ++tokens;
            return new ParenToken(6, child, pnumber);
        }

        static ClosureToken createClosure(Token tok) {
            ++tokens;
            return new ClosureToken(3, tok);
        }

        static ClosureToken createNGClosure(Token tok) {
            ++tokens;
            return new ClosureToken(9, tok);
        }

        static ConcatToken createConcat(Token tok1, Token tok2) {
            ++tokens;
            return new ConcatToken(tok1, tok2);
        }

        static UnionToken createConcat() {
            ++tokens;
            return new UnionToken(1);
        }

        static UnionToken createUnion() {
            ++tokens;
            return new UnionToken(2);
        }

        static Token createEmpty() {
            return token_empty;
        }

        static RangeToken createRange() {
            ++tokens;
            return new RangeToken(4);
        }

        static RangeToken createNRange() {
            ++tokens;
            return new RangeToken(5);
        }

        static CharToken createChar(int ch) {
            ++tokens;
            return new CharToken(0, ch);
        }

        private static CharToken createAnchor(int ch) {
            ++tokens;
            return new CharToken(8, ch);
        }

        static StringToken createBackReference(int refno) {
            ++tokens;
            return new StringToken(12, null, refno);
        }

        static StringToken createString(String str) {
            ++tokens;
            return new StringToken(10, str, 0);
        }

        static ModifierToken createModifierGroup(Token child, int add, int mask) {
            ++tokens;
            return new ModifierToken(child, add, mask);
        }

        static ConditionToken createCondition(int refno, Token condition, Token yespat, Token nopat) {
            ++tokens;
            return new ConditionToken(refno, condition, yespat, nopat);
        }

        protected Token(int type) {
            this.type = type;
        }

        int size() {
            return 0;
        }

        Token getChild(int index) {
            return null;
        }

        void addChild(Token tok) {
            throw new RuntimeException("Not supported.");
        }

        protected void addRange(int start, int end) {
            throw new RuntimeException("Not supported.");
        }

        protected void sortRanges() {
            throw new RuntimeException("Not supported.");
        }

        protected void compactRanges() {
            throw new RuntimeException("Not supported.");
        }

        protected void mergeRanges(Token tok) {
            throw new RuntimeException("Not supported.");
        }

        protected void subtractRanges(Token tok) {
            throw new RuntimeException("Not supported.");
        }

        protected void intersectRanges(Token tok) {
            throw new RuntimeException("Not supported.");
        }

        static Token complementRanges(Token tok) {
            return RangeToken.complementRanges(tok);
        }

        void setMin(int min) {
        }

        void setMax(int max) {
        }

        int getMin() {
            return -1;
        }

        int getMax() {
            return -1;
        }

        int getReferenceNumber() {
            return 0;
        }

        String getString() {
            return null;
        }

        int getParenNumber() {
            return 0;
        }

        int getChar() {
            return -1;
        }

        public String toString() {
            return this.toString(0);
        }

        public String toString(int options) {
            return this.type == 11 ? "." : "";
        }

        final int getMinLength() {
            switch (this.type) {
                case 1: {
                    int sum = 0;
                    int i = 0;
                    while (i < this.size()) {
                        sum += this.getChild(i).getMinLength();
                        ++i;
                    }
                    return sum;
                }
                case 2: 
                case 26: {
                    if (this.size() == 0) {
                        return 0;
                    }
                    int ret = this.getChild(0).getMinLength();
                    int i = 1;
                    while (i < this.size()) {
                        int min = this.getChild(i).getMinLength();
                        if (min < ret) {
                            ret = min;
                        }
                        ++i;
                    }
                    return ret;
                }
                case 3: 
                case 9: {
                    if (this.getMin() >= 0) {
                        return this.getMin() * this.getChild(0).getMinLength();
                    }
                    return 0;
                }
                case 7: 
                case 8: {
                    return 0;
                }
                case 0: 
                case 4: 
                case 5: 
                case 11: {
                    return 1;
                }
                case 6: 
                case 24: 
                case 25: {
                    return this.getChild(0).getMinLength();
                }
                case 12: {
                    return 0;
                }
                case 10: {
                    return this.getString().length();
                }
                case 20: 
                case 21: 
                case 22: 
                case 23: {
                    return 0;
                }
            }
            throw new RuntimeException("Token#getMinLength(): Invalid Type: " + this.type);
        }

        final int getMaxLength() {
            switch (this.type) {
                case 1: {
                    int sum = 0;
                    int i = 0;
                    while (i < this.size()) {
                        int d = this.getChild(i).getMaxLength();
                        if (d < 0) {
                            return -1;
                        }
                        sum += d;
                        ++i;
                    }
                    return sum;
                }
                case 2: 
                case 26: {
                    if (this.size() == 0) {
                        return 0;
                    }
                    int ret = this.getChild(0).getMaxLength();
                    int i = 1;
                    while (ret >= 0 && i < this.size()) {
                        int max = this.getChild(i).getMaxLength();
                        if (max < 0) {
                            ret = -1;
                            break;
                        }
                        if (max > ret) {
                            ret = max;
                        }
                        ++i;
                    }
                    return ret;
                }
                case 3: 
                case 9: {
                    if (this.getMax() >= 0) {
                        return this.getMax() * this.getChild(0).getMaxLength();
                    }
                    return -1;
                }
                case 7: 
                case 8: {
                    return 0;
                }
                case 0: {
                    return 1;
                }
                case 4: 
                case 5: 
                case 11: {
                    return 2;
                }
                case 6: 
                case 24: 
                case 25: {
                    return this.getChild(0).getMaxLength();
                }
                case 12: {
                    return -1;
                }
                case 10: {
                    return this.getString().length();
                }
                case 20: 
                case 21: 
                case 22: 
                case 23: {
                    return 0;
                }
            }
            throw new RuntimeException("Token#getMaxLength(): Invalid Type: " + this.type);
        }

        private static final boolean isSet(int options, int flag) {
            return (options & flag) == flag;
        }

        final int analyzeFirstCharacter(RangeToken result, int options) {
            switch (this.type) {
                case 1: {
                    int ret = 0;
                    int i = 0;
                    while (i < this.size()) {
                        ret = this.getChild(i).analyzeFirstCharacter(result, options);
                        if (ret != 0) break;
                        ++i;
                    }
                    return ret;
                }
                case 2: {
                    if (this.size() == 0) {
                        return 0;
                    }
                    int ret2 = 0;
                    boolean hasEmpty = false;
                    int i = 0;
                    while (i < this.size()) {
                        ret2 = this.getChild(i).analyzeFirstCharacter(result, options);
                        if (ret2 == 2) break;
                        if (ret2 == 0) {
                            hasEmpty = true;
                        }
                        ++i;
                    }
                    return hasEmpty ? 0 : ret2;
                }
                case 26: {
                    int ret3 = this.getChild(0).analyzeFirstCharacter(result, options);
                    if (this.size() == 1) {
                        return 0;
                    }
                    if (ret3 == 2) {
                        return ret3;
                    }
                    int ret4 = this.getChild(1).analyzeFirstCharacter(result, options);
                    if (ret4 == 2) {
                        return ret4;
                    }
                    return ret3 == 0 || ret4 == 0 ? 0 : 1;
                }
                case 3: 
                case 9: {
                    this.getChild(0).analyzeFirstCharacter(result, options);
                    return 0;
                }
                case 7: 
                case 8: {
                    return 0;
                }
                case 0: {
                    int ch = this.getChar();
                    result.addRange(ch, ch);
                    if (ch < 65536 && Token.isSet(options, 2)) {
                        ch = Character.toUpperCase((char)ch);
                        result.addRange(ch, ch);
                        ch = Character.toLowerCase((char)ch);
                        result.addRange(ch, ch);
                    }
                    return 1;
                }
                case 11: {
                    if (Token.isSet(options, 4)) {
                        return 0;
                    }
                    return 0;
                }
                case 4: {
                    if (Token.isSet(options, 2)) {
                        result.mergeRanges(((RangeToken)this).getCaseInsensitiveToken());
                    } else {
                        result.mergeRanges(this);
                    }
                    return 1;
                }
                case 5: {
                    if (Token.isSet(options, 2)) {
                        result.mergeRanges(Token.complementRanges(((RangeToken)this).getCaseInsensitiveToken()));
                    } else {
                        result.mergeRanges(Token.complementRanges(this));
                    }
                    return 1;
                }
                case 6: 
                case 24: {
                    return this.getChild(0).analyzeFirstCharacter(result, options);
                }
                case 25: {
                    options |= ((ModifierToken)this).getOptions();
                    return this.getChild(0).analyzeFirstCharacter(result, options &= ~((ModifierToken)this).getOptionsMask());
                }
                case 12: {
                    result.addRange(0, 0x10FFFF);
                    return 2;
                }
                case 10: {
                    char ch2;
                    int cha = this.getString().charAt(0);
                    if (REUtil.isHighSurrogate(cha) && this.getString().length() >= 2 && REUtil.isLowSurrogate(ch2 = this.getString().charAt(1))) {
                        cha = REUtil.composeFromSurrogates(cha, ch2);
                    }
                    result.addRange(cha, cha);
                    if (cha < 65536 && Token.isSet(options, 2)) {
                        cha = Character.toUpperCase((char)cha);
                        result.addRange(cha, cha);
                        cha = Character.toLowerCase((char)cha);
                        result.addRange(cha, cha);
                    }
                    return 1;
                }
                case 20: 
                case 21: 
                case 22: 
                case 23: {
                    return 0;
                }
            }
            throw new RuntimeException("Token#analyzeHeadCharacter(): Invalid Type: " + this.type);
        }

        private final boolean isShorterThan(Token tok) {
            if (tok == null) {
                return false;
            }
            if (this.type != 10) {
                throw new RuntimeException("Internal Error: Illegal type: " + this.type);
            }
            int mylength = this.getString().length();
            if (tok.type != 10) {
                throw new RuntimeException("Internal Error: Illegal type: " + tok.type);
            }
            int otherlength = tok.getString().length();
            return mylength < otherlength;
        }

        final void findFixedString(FixedStringContainer container, int options) {
            switch (this.type) {
                case 1: {
                    Token prevToken = null;
                    int prevOptions = 0;
                    int i = 0;
                    while (i < this.size()) {
                        this.getChild(i).findFixedString(container, options);
                        if (prevToken == null || prevToken.isShorterThan(container.token)) {
                            prevToken = container.token;
                            prevOptions = container.options;
                        }
                        ++i;
                    }
                    container.token = prevToken;
                    container.options = prevOptions;
                    return;
                }
                case 2: 
                case 3: 
                case 4: 
                case 5: 
                case 7: 
                case 8: 
                case 9: 
                case 11: 
                case 12: 
                case 20: 
                case 21: 
                case 22: 
                case 23: 
                case 26: {
                    container.token = null;
                    return;
                }
                case 0: {
                    container.token = null;
                    return;
                }
                case 10: {
                    container.token = this;
                    container.options = options;
                    return;
                }
                case 6: 
                case 24: {
                    this.getChild(0).findFixedString(container, options);
                    return;
                }
                case 25: {
                    options |= ((ModifierToken)this).getOptions();
                    this.getChild(0).findFixedString(container, options &= ~((ModifierToken)this).getOptionsMask());
                    return;
                }
            }
            throw new RuntimeException("Token#findFixedString(): Invalid Type: " + this.type);
        }

        boolean match(int ch) {
            throw new RuntimeException("NFAArrow#match(): Internal error: " + this.type);
        }

        /*
         * WARNING - Removed try catching itself - possible behaviour change.
         */
        protected static RangeToken getRange(String name, boolean positive) {
            if (categories.size() == 0) {
                Hashtable<String, Token> hashtable = categories;
                synchronized (hashtable) {
                    Token[] ranges = new Token[categoryNames.length];
                    int i = 0;
                    while (i < ranges.length) {
                        ranges[i] = Token.createRange();
                        ++i;
                    }
                    int i2 = 0;
                    while (i2 < 65536) {
                        int type = Character.getType((char)i2);
                        if (type == 21 || type == 22) {
                            if (i2 == 171 || i2 == 8216 || i2 == 8219 || i2 == 8220 || i2 == 8223 || i2 == 8249) {
                                type = 29;
                            }
                            if (i2 == 187 || i2 == 8217 || i2 == 8221 || i2 == 8250) {
                                type = 30;
                            }
                        }
                        ranges[type].addRange(i2, i2);
                        switch (type) {
                            case 1: 
                            case 2: 
                            case 3: 
                            case 4: 
                            case 5: {
                                type = 31;
                                break;
                            }
                            case 6: 
                            case 7: 
                            case 8: {
                                type = 32;
                                break;
                            }
                            case 9: 
                            case 10: 
                            case 11: {
                                type = 33;
                                break;
                            }
                            case 12: 
                            case 13: 
                            case 14: {
                                type = 34;
                                break;
                            }
                            case 0: 
                            case 15: 
                            case 16: 
                            case 18: 
                            case 19: {
                                type = 35;
                                break;
                            }
                            case 20: 
                            case 21: 
                            case 22: 
                            case 23: 
                            case 24: 
                            case 29: 
                            case 30: {
                                type = 36;
                                break;
                            }
                            case 25: 
                            case 26: 
                            case 27: 
                            case 28: {
                                type = 37;
                                break;
                            }
                            default: {
                                throw new RuntimeException("org.apache.xerces.utils.regex.Token#getRange(): Unknown Unicode category: " + type);
                            }
                        }
                        ranges[type].addRange(i2, i2);
                        ++i2;
                    }
                    ranges[0].addRange(65536, 0x10FFFF);
                    i2 = 0;
                    while (i2 < ranges.length) {
                        if (categoryNames[i2] != null) {
                            if (i2 == 0) {
                                ranges[i2].addRange(65536, 0x10FFFF);
                            }
                            categories.put(categoryNames[i2], ranges[i2]);
                            categories2.put(categoryNames[i2], Token.complementRanges(ranges[i2]));
                        }
                        ++i2;
                    }
                    StringBuffer buffer = new StringBuffer(50);
                    int i3 = 0;
                    while (i3 < blockNames.length) {
                        int location;
                        RangeToken r1 = Token.createRange();
                        if (i3 < 84) {
                            location = i3 * 2;
                            char rstart = blockRanges.charAt(location);
                            char rend = blockRanges.charAt(location + 1);
                            ((Token)r1).addRange(rstart, rend);
                        } else {
                            location = (i3 - 84) * 2;
                            ((Token)r1).addRange(nonBMPBlockRanges[location], nonBMPBlockRanges[location + 1]);
                        }
                        String n = blockNames[i3];
                        if (n.equals("Specials")) {
                            ((Token)r1).addRange(65520, 65533);
                        }
                        if (n.equals("Private Use")) {
                            ((Token)r1).addRange(983040, 1048573);
                            ((Token)r1).addRange(0x100000, 1114109);
                        }
                        categories.put(n, r1);
                        categories2.put(n, Token.complementRanges(r1));
                        buffer.setLength(0);
                        buffer.append("Is");
                        if (n.indexOf(32) >= 0) {
                            int ci = 0;
                            while (ci < n.length()) {
                                if (n.charAt(ci) != ' ') {
                                    buffer.append(n.charAt(ci));
                                }
                                ++ci;
                            }
                        } else {
                            buffer.append(n);
                        }
                        Token.setAlias(buffer.toString(), n, true);
                        ++i3;
                    }
                    Token.setAlias("ASSIGNED", "Cn", false);
                    Token.setAlias("UNASSIGNED", "Cn", true);
                    RangeToken all = Token.createRange();
                    ((Token)all).addRange(0, 0x10FFFF);
                    categories.put("ALL", all);
                    categories2.put("ALL", Token.complementRanges(all));
                    Token.registerNonXS("ASSIGNED");
                    Token.registerNonXS("UNASSIGNED");
                    Token.registerNonXS("ALL");
                    RangeToken isalpha = Token.createRange();
                    ((Token)isalpha).mergeRanges(ranges[1]);
                    ((Token)isalpha).mergeRanges(ranges[2]);
                    ((Token)isalpha).mergeRanges(ranges[5]);
                    categories.put("IsAlpha", isalpha);
                    categories2.put("IsAlpha", Token.complementRanges(isalpha));
                    Token.registerNonXS("IsAlpha");
                    RangeToken isalnum = Token.createRange();
                    ((Token)isalnum).mergeRanges(isalpha);
                    ((Token)isalnum).mergeRanges(ranges[9]);
                    categories.put("IsAlnum", isalnum);
                    categories2.put("IsAlnum", Token.complementRanges(isalnum));
                    Token.registerNonXS("IsAlnum");
                    RangeToken isspace = Token.createRange();
                    ((Token)isspace).mergeRanges(token_spaces);
                    ((Token)isspace).mergeRanges(ranges[34]);
                    categories.put("IsSpace", isspace);
                    categories2.put("IsSpace", Token.complementRanges(isspace));
                    Token.registerNonXS("IsSpace");
                    RangeToken isword = Token.createRange();
                    ((Token)isword).mergeRanges(isalnum);
                    ((Token)isword).addRange(95, 95);
                    categories.put("IsWord", isword);
                    categories2.put("IsWord", Token.complementRanges(isword));
                    Token.registerNonXS("IsWord");
                    RangeToken isascii = Token.createRange();
                    ((Token)isascii).addRange(0, 127);
                    categories.put("IsASCII", isascii);
                    categories2.put("IsASCII", Token.complementRanges(isascii));
                    Token.registerNonXS("IsASCII");
                    RangeToken isnotgraph = Token.createRange();
                    ((Token)isnotgraph).mergeRanges(ranges[35]);
                    ((Token)isnotgraph).addRange(32, 32);
                    categories.put("IsGraph", Token.complementRanges(isnotgraph));
                    categories2.put("IsGraph", isnotgraph);
                    Token.registerNonXS("IsGraph");
                    RangeToken isxdigit = Token.createRange();
                    ((Token)isxdigit).addRange(48, 57);
                    ((Token)isxdigit).addRange(65, 70);
                    ((Token)isxdigit).addRange(97, 102);
                    categories.put("IsXDigit", Token.complementRanges(isxdigit));
                    categories2.put("IsXDigit", isxdigit);
                    Token.registerNonXS("IsXDigit");
                    Token.setAlias("IsDigit", "Nd", true);
                    Token.setAlias("IsUpper", "Lu", true);
                    Token.setAlias("IsLower", "Ll", true);
                    Token.setAlias("IsCntrl", "C", true);
                    Token.setAlias("IsPrint", "C", false);
                    Token.setAlias("IsPunct", "P", true);
                    Token.registerNonXS("IsDigit");
                    Token.registerNonXS("IsUpper");
                    Token.registerNonXS("IsLower");
                    Token.registerNonXS("IsCntrl");
                    Token.registerNonXS("IsPrint");
                    Token.registerNonXS("IsPunct");
                    Token.setAlias("alpha", "IsAlpha", true);
                    Token.setAlias("alnum", "IsAlnum", true);
                    Token.setAlias("ascii", "IsASCII", true);
                    Token.setAlias("cntrl", "IsCntrl", true);
                    Token.setAlias("digit", "IsDigit", true);
                    Token.setAlias("graph", "IsGraph", true);
                    Token.setAlias("lower", "IsLower", true);
                    Token.setAlias("print", "IsPrint", true);
                    Token.setAlias("punct", "IsPunct", true);
                    Token.setAlias("space", "IsSpace", true);
                    Token.setAlias("upper", "IsUpper", true);
                    Token.setAlias("word", "IsWord", true);
                    Token.setAlias("xdigit", "IsXDigit", true);
                    Token.registerNonXS("alpha");
                    Token.registerNonXS("alnum");
                    Token.registerNonXS("ascii");
                    Token.registerNonXS("cntrl");
                    Token.registerNonXS("digit");
                    Token.registerNonXS("graph");
                    Token.registerNonXS("lower");
                    Token.registerNonXS("print");
                    Token.registerNonXS("punct");
                    Token.registerNonXS("space");
                    Token.registerNonXS("upper");
                    Token.registerNonXS("word");
                    Token.registerNonXS("xdigit");
                }
            }
            RangeToken tok = positive ? (RangeToken)categories.get(name) : (RangeToken)categories2.get(name);
            return tok;
        }

        protected static RangeToken getRange(String name, boolean positive, boolean xs) {
            RangeToken range = Token.getRange(name, positive);
            if (xs && range != null && Token.isRegisterNonXS(name)) {
                range = null;
            }
            return range;
        }

        protected static void registerNonXS(String name) {
            if (nonxs == null) {
                nonxs = new Hashtable();
            }
            nonxs.put(name, name);
        }

        protected static boolean isRegisterNonXS(String name) {
            if (nonxs == null) {
                return false;
            }
            return nonxs.containsKey(name);
        }

        private static void setAlias(String newName, String name, boolean positive) {
            Token t1 = categories.get(name);
            Token t2 = categories2.get(name);
            if (positive) {
                categories.put(newName, t1);
                categories2.put(newName, t2);
            } else {
                categories2.put(newName, t1);
                categories.put(newName, t2);
            }
        }

        static synchronized Token getGraphemePattern() {
            if (token_grapheme != null) {
                return token_grapheme;
            }
            RangeToken base_char = Token.createRange();
            ((Token)base_char).mergeRanges(Token.getRange("ASSIGNED", true));
            ((Token)base_char).subtractRanges(Token.getRange("M", true));
            ((Token)base_char).subtractRanges(Token.getRange("C", true));
            RangeToken virama = Token.createRange();
            int i = 0;
            while (i < viramaString.length()) {
                ((Token)virama).addRange(i, i);
                ++i;
            }
            RangeToken combiner_wo_virama = Token.createRange();
            ((Token)combiner_wo_virama).mergeRanges(Token.getRange("M", true));
            ((Token)combiner_wo_virama).addRange(4448, 4607);
            ((Token)combiner_wo_virama).addRange(65438, 65439);
            UnionToken left = Token.createUnion();
            ((Token)left).addChild(base_char);
            ((Token)left).addChild(token_empty);
            Token foo = Token.createUnion();
            ((Token)foo).addChild(Token.createConcat(virama, Token.getRange("L", true)));
            ((Token)foo).addChild(combiner_wo_virama);
            foo = Token.createClosure(foo);
            foo = Token.createConcat(left, foo);
            token_grapheme = foo;
            return token_grapheme;
        }

        static synchronized Token getCombiningCharacterSequence() {
            if (token_ccs != null) {
                return token_ccs;
            }
            Token foo = Token.createClosure(Token.getRange("M", true));
            foo = Token.createConcat(Token.getRange("M", false), foo);
            token_ccs = foo;
            return token_ccs;
        }

        static class CharToken
        extends Token
        implements Serializable {
            private static final long serialVersionUID = 1L;
            int chardata;

            CharToken(int type, int ch) {
                super(type);
                this.chardata = ch;
            }

            int getChar() {
                return this.chardata;
            }

            public String toString(int options) {
                String ret;
                block0 : switch (this.type) {
                    case 0: {
                        switch (this.chardata) {
                            case 40: 
                            case 41: 
                            case 42: 
                            case 43: 
                            case 46: 
                            case 63: 
                            case 91: 
                            case 92: 
                            case 123: 
                            case 124: {
                                ret = "\\" + (char)this.chardata;
                                break block0;
                            }
                            case 12: {
                                ret = "\\f";
                                break block0;
                            }
                            case 10: {
                                ret = "\\n";
                                break block0;
                            }
                            case 13: {
                                ret = "\\r";
                                break block0;
                            }
                            case 9: {
                                ret = "\\t";
                                break block0;
                            }
                            case 27: {
                                ret = "\\e";
                                break block0;
                            }
                        }
                        if (this.chardata >= 65536) {
                            String pre = "0" + Integer.toHexString(this.chardata);
                            ret = "\\v" + pre.substring(pre.length() - 6, pre.length());
                            break;
                        }
                        ret = "" + (char)this.chardata;
                        break;
                    }
                    case 8: {
                        if (this == token_linebeginning || this == token_lineend) {
                            ret = "" + (char)this.chardata;
                            break;
                        }
                        ret = "\\" + (char)this.chardata;
                        break;
                    }
                    default: {
                        ret = null;
                    }
                }
                return ret;
            }

            boolean match(int ch) {
                if (this.type == 0) {
                    return ch == this.chardata;
                }
                throw new RuntimeException("NFAArrow#match(): Internal error: " + this.type);
            }
        }

        static class ClosureToken
        extends Token
        implements Serializable {
            private static final long serialVersionUID = 1L;
            int min;
            int max;
            Token child;

            ClosureToken(int type, Token tok) {
                super(type);
                this.child = tok;
                this.setMin(-1);
                this.setMax(-1);
            }

            int size() {
                return 1;
            }

            Token getChild(int index) {
                return this.child;
            }

            final void setMin(int min) {
                this.min = min;
            }

            final void setMax(int max) {
                this.max = max;
            }

            final int getMin() {
                return this.min;
            }

            final int getMax() {
                return this.max;
            }

            /*
             * Enabled force condition propagation
             * Lifted jumps to return sites
             */
            public String toString(int options) {
                if (this.type == 3) {
                    if (this.getMin() < 0 && this.getMax() < 0) {
                        return String.valueOf(this.child.toString(options)) + "*";
                    }
                    if (this.getMin() == this.getMax()) {
                        return String.valueOf(this.child.toString(options)) + "{" + this.getMin() + "}";
                    }
                    if (this.getMin() >= 0 && this.getMax() >= 0) {
                        return String.valueOf(this.child.toString(options)) + "{" + this.getMin() + "," + this.getMax() + "}";
                    }
                    if (this.getMin() < 0) throw new RuntimeException("Token#toString(): CLOSURE " + this.getMin() + ", " + this.getMax());
                    if (this.getMax() >= 0) throw new RuntimeException("Token#toString(): CLOSURE " + this.getMin() + ", " + this.getMax());
                    return String.valueOf(this.child.toString(options)) + "{" + this.getMin() + ",}";
                }
                if (this.getMin() < 0 && this.getMax() < 0) {
                    return String.valueOf(this.child.toString(options)) + "*?";
                }
                if (this.getMin() == this.getMax()) {
                    return String.valueOf(this.child.toString(options)) + "{" + this.getMin() + "}?";
                }
                if (this.getMin() >= 0 && this.getMax() >= 0) {
                    return String.valueOf(this.child.toString(options)) + "{" + this.getMin() + "," + this.getMax() + "}?";
                }
                if (this.getMin() < 0) throw new RuntimeException("Token#toString(): NONGREEDYCLOSURE " + this.getMin() + ", " + this.getMax());
                if (this.getMax() >= 0) throw new RuntimeException("Token#toString(): NONGREEDYCLOSURE " + this.getMin() + ", " + this.getMax());
                return String.valueOf(this.child.toString(options)) + "{" + this.getMin() + ",}?";
            }
        }

        static class ConcatToken
        extends Token
        implements Serializable {
            private static final long serialVersionUID = 1L;
            Token child;
            Token child2;

            ConcatToken(Token t1, Token t2) {
                super(1);
                this.child = t1;
                this.child2 = t2;
            }

            int size() {
                return 2;
            }

            Token getChild(int index) {
                return index == 0 ? this.child : this.child2;
            }

            public String toString(int options) {
                String ret = this.child2.type == 3 && this.child2.getChild(0) == this.child ? String.valueOf(this.child.toString(options)) + "+" : (this.child2.type == 9 && this.child2.getChild(0) == this.child ? String.valueOf(this.child.toString(options)) + "+?" : String.valueOf(this.child.toString(options)) + this.child2.toString(options));
                return ret;
            }
        }

        static class ConditionToken
        extends Token
        implements Serializable {
            private static final long serialVersionUID = 1L;
            int refNumber;
            Token condition;
            Token yes;
            Token no;

            ConditionToken(int refno, Token cond, Token yespat, Token nopat) {
                super(26);
                this.refNumber = refno;
                this.condition = cond;
                this.yes = yespat;
                this.no = nopat;
            }

            int size() {
                return this.no == null ? 1 : 2;
            }

            Token getChild(int index) {
                if (index == 0) {
                    return this.yes;
                }
                if (index == 1) {
                    return this.no;
                }
                throw new RuntimeException("Internal Error: " + index);
            }

            public String toString(int options) {
                String ret = this.refNumber > 0 ? "(?(" + this.refNumber + ")" : (this.condition.type == 8 ? "(?(" + this.condition + ")" : "(?" + this.condition);
                ret = this.no == null ? String.valueOf(ret) + this.yes + ")" : String.valueOf(ret) + this.yes + "|" + this.no + ")";
                return ret;
            }
        }

        static class FixedStringContainer {
            Token token = null;
            int options = 0;

            FixedStringContainer() {
            }
        }

        static class ModifierToken
        extends Token
        implements Serializable {
            private static final long serialVersionUID = 1L;
            Token child;
            int add;
            int mask;

            ModifierToken(Token tok, int add, int mask) {
                super(25);
                this.child = tok;
                this.add = add;
                this.mask = mask;
            }

            int size() {
                return 1;
            }

            Token getChild(int index) {
                return this.child;
            }

            int getOptions() {
                return this.add;
            }

            int getOptionsMask() {
                return this.mask;
            }

            public String toString(int options) {
                return "(?" + (this.add == 0 ? "" : REUtil.createOptionString(this.add)) + (this.mask == 0 ? "" : REUtil.createOptionString(this.mask)) + ":" + this.child.toString(options) + ")";
            }
        }

        static class ParenToken
        extends Token
        implements Serializable {
            private static final long serialVersionUID = 1L;
            Token child;
            int parennumber;

            ParenToken(int type, Token tok, int paren) {
                super(type);
                this.child = tok;
                this.parennumber = paren;
            }

            int size() {
                return 1;
            }

            Token getChild(int index) {
                return this.child;
            }

            int getParenNumber() {
                return this.parennumber;
            }

            public String toString(int options) {
                String ret = null;
                switch (this.type) {
                    case 6: {
                        if (this.parennumber == 0) {
                            ret = "(?:" + this.child.toString(options) + ")";
                            break;
                        }
                        ret = "(" + this.child.toString(options) + ")";
                        break;
                    }
                    case 20: {
                        ret = "(?=" + this.child.toString(options) + ")";
                        break;
                    }
                    case 21: {
                        ret = "(?!" + this.child.toString(options) + ")";
                        break;
                    }
                    case 22: {
                        ret = "(?<=" + this.child.toString(options) + ")";
                        break;
                    }
                    case 23: {
                        ret = "(?<!" + this.child.toString(options) + ")";
                        break;
                    }
                    case 24: {
                        ret = "(?>" + this.child.toString(options) + ")";
                    }
                }
                return ret;
            }
        }

        static class StringToken
        extends Token
        implements Serializable {
            private static final long serialVersionUID = 1L;
            String string;
            int refNumber;

            StringToken(int type, String str, int n) {
                super(type);
                this.string = str;
                this.refNumber = n;
            }

            int getReferenceNumber() {
                return this.refNumber;
            }

            String getString() {
                return this.string;
            }

            public String toString(int options) {
                if (this.type == 12) {
                    return "\\" + this.refNumber;
                }
                return REUtil.quoteMeta(this.string);
            }
        }

        static class UnionToken
        extends Token
        implements Serializable {
            private static final long serialVersionUID = 1L;
            Vector<Token> children;

            UnionToken(int type) {
                super(type);
            }

            void addChild(Token tok) {
                int ch;
                StringBuffer buffer;
                int nextMaxLength;
                if (tok == null) {
                    return;
                }
                if (this.children == null) {
                    this.children = new Vector();
                }
                if (this.type == 2) {
                    this.children.addElement(tok);
                    return;
                }
                if (tok.type == 1) {
                    int i = 0;
                    while (i < tok.size()) {
                        this.addChild(tok.getChild(i));
                        ++i;
                    }
                    return;
                }
                int size = this.children.size();
                if (size == 0) {
                    this.children.addElement(tok);
                    return;
                }
                Token previous = this.children.elementAt(size - 1);
                if (previous.type != 0 && previous.type != 10 || tok.type != 0 && tok.type != 10) {
                    this.children.addElement(tok);
                    return;
                }
                int n = nextMaxLength = tok.type == 0 ? 2 : tok.getString().length();
                if (previous.type == 0) {
                    buffer = new StringBuffer(2 + nextMaxLength);
                    ch = previous.getChar();
                    if (ch >= 65536) {
                        buffer.append(REUtil.decomposeToSurrogates(ch));
                    } else {
                        buffer.append((char)ch);
                    }
                    previous = Token.createString(null);
                    this.children.setElementAt(previous, size - 1);
                } else {
                    buffer = new StringBuffer(previous.getString().length() + nextMaxLength);
                    buffer.append(previous.getString());
                }
                if (tok.type == 0) {
                    ch = tok.getChar();
                    if (ch >= 65536) {
                        buffer.append(REUtil.decomposeToSurrogates(ch));
                    } else {
                        buffer.append((char)ch);
                    }
                } else {
                    buffer.append(tok.getString());
                }
                ((StringToken)previous).string = new String(buffer);
            }

            int size() {
                return this.children == null ? 0 : this.children.size();
            }

            Token getChild(int index) {
                return this.children.elementAt(index);
            }

            public String toString(int options) {
                String ret;
                if (this.type == 1) {
                    String ret2;
                    if (this.children.size() == 2) {
                        Token ch = this.getChild(0);
                        Token ch2 = this.getChild(1);
                        ret2 = ch2.type == 3 && ch2.getChild(0) == ch ? String.valueOf(ch.toString(options)) + "+" : (ch2.type == 9 && ch2.getChild(0) == ch ? String.valueOf(ch.toString(options)) + "+?" : String.valueOf(ch.toString(options)) + ch2.toString(options));
                    } else {
                        StringBuffer sb = new StringBuffer();
                        int i = 0;
                        while (i < this.children.size()) {
                            sb.append(this.children.elementAt(i).toString(options));
                            ++i;
                        }
                        ret2 = new String(sb);
                    }
                    return ret2;
                }
                if (this.children.size() == 2 && this.getChild((int)1).type == 7) {
                    ret = String.valueOf(this.getChild(0).toString(options)) + "?";
                } else if (this.children.size() == 2 && this.getChild((int)0).type == 7) {
                    ret = String.valueOf(this.getChild(1).toString(options)) + "??";
                } else {
                    StringBuffer sb = new StringBuffer();
                    sb.append(this.children.elementAt(0).toString(options));
                    int i = 1;
                    while (i < this.children.size()) {
                        sb.append('|');
                        sb.append(this.children.elementAt(i).toString(options));
                        ++i;
                    }
                    ret = new String(sb);
                }
                return ret;
            }
        }
    }
}

