/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.jface.text.BadLocationException
 *  org.eclipse.jface.text.BadPositionCategoryException
 *  org.eclipse.jface.text.DefaultPositionUpdater
 *  org.eclipse.jface.text.Document
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.jface.text.IPositionUpdater
 *  org.eclipse.jface.text.Position
 *  org.eclipse.text.edits.DeleteEdit
 *  org.eclipse.text.edits.InsertEdit
 *  org.eclipse.text.edits.MultiTextEdit
 *  org.eclipse.text.edits.ReplaceEdit
 *  org.eclipse.text.edits.TextEdit
 *  org.eclipse.text.edits.TextEditGroup
 */
package org.eclipse.jdt.internal.core.dom.rewrite;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.ToolFactory;
import org.eclipse.jdt.core.dom.ASTNode;
import org.eclipse.jdt.core.dom.Annotation;
import org.eclipse.jdt.core.dom.Block;
import org.eclipse.jdt.core.dom.BodyDeclaration;
import org.eclipse.jdt.core.dom.Expression;
import org.eclipse.jdt.core.dom.Statement;
import org.eclipse.jdt.core.formatter.DefaultCodeFormatterConstants;
import org.eclipse.jdt.core.formatter.IndentManipulation;
import org.eclipse.jdt.internal.core.dom.rewrite.ASTRewriteFlattener;
import org.eclipse.jdt.internal.core.dom.rewrite.NodeInfoStore;
import org.eclipse.jdt.internal.core.dom.rewrite.RewriteEventStore;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.BadPositionCategoryException;
import org.eclipse.jface.text.DefaultPositionUpdater;
import org.eclipse.jface.text.Document;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IPositionUpdater;
import org.eclipse.jface.text.Position;
import org.eclipse.text.edits.DeleteEdit;
import org.eclipse.text.edits.InsertEdit;
import org.eclipse.text.edits.MultiTextEdit;
import org.eclipse.text.edits.ReplaceEdit;
import org.eclipse.text.edits.TextEdit;
import org.eclipse.text.edits.TextEditGroup;

final class ASTRewriteFormatter {
    private final String lineDelimiter;
    private final int tabWidth;
    private final int indentWidth;
    private final NodeInfoStore placeholders;
    private final RewriteEventStore eventStore;
    private final Map options;
    public static final Prefix NONE = new ConstPrefix("");
    public static final Prefix SPACE = new ConstPrefix(" ");
    public static final Prefix ASSERT_COMMENT = new ConstPrefix(" : ");
    public final Prefix VAR_INITIALIZER = new FormattingPrefix("A a={};", "a={", 2);
    public final Prefix METHOD_BODY = new FormattingPrefix("void a() {}", ") {", 4);
    public final Prefix FINALLY_BLOCK = new FormattingPrefix("try {} finally {}", "} finally {", 2);
    public final Prefix CATCH_BLOCK = new FormattingPrefix("try {} catch(Exception e) {}", "} c", 2);
    public final Prefix ANNOT_MEMBER_DEFAULT = new FormattingPrefix("String value() default 1;", ") default 1", 4);
    public final Prefix ENUM_BODY_START = new FormattingPrefix("enum E { A(){void foo(){}} }", "){v", 8);
    public final Prefix ENUM_BODY_END = new FormattingPrefix("enum E { A(){void foo(){ }}, B}", "}},", 8);
    public final Prefix WILDCARD_EXTENDS = new FormattingPrefix("A<? extends B> a;", "? extends B", 4);
    public final Prefix WILDCARD_SUPER = new FormattingPrefix("A<? super B> a;", "? super B", 4);
    public final Prefix FIRST_ENUM_CONST = new FormattingPrefix("enum E { X;}", "{ X", 8);
    public final Prefix ANNOTATION_SEPARATION = new FormattingPrefix("@A @B class C {}", "A @", 8);
    public final Prefix PARAM_ANNOTATION_SEPARATION = new FormattingPrefix("void foo(@A @B p) { }", "A @", 4);
    public final Prefix TRY_RESOURCES = new FormattingPrefix("try (A a = new A(); B b = new B()) {}", "; B", 2);
    public final Prefix TRY_RESOURCES_PAREN = new FormattingPrefix("try (A a = new A(); B b = new B()) {}", "y (", 2);
    public final BlockContext IF_BLOCK_WITH_ELSE = new BlockFormattingPrefixSuffix("if (true)", "else{}", 8);
    public final BlockContext IF_BLOCK_NO_ELSE = new BlockFormattingPrefix("if (true)", 8);
    public final BlockContext ELSE_AFTER_STATEMENT = new BlockFormattingPrefix("if (true) foo();else ", 15);
    public final BlockContext ELSE_AFTER_BLOCK = new BlockFormattingPrefix("if (true) {}else ", 11);
    public final BlockContext FOR_BLOCK = new BlockFormattingPrefix("for (;;) ", 7);
    public final BlockContext WHILE_BLOCK = new BlockFormattingPrefix("while (true)", 11);
    public final BlockContext DO_BLOCK = new BlockFormattingPrefixSuffix("do ", "while (true);", 1);

    public ASTRewriteFormatter(NodeInfoStore placeholders, RewriteEventStore eventStore, Map options, String lineDelimiter) {
        this.placeholders = placeholders;
        this.eventStore = eventStore;
        this.options = options == null ? JavaCore.getOptions() : new HashMap(options);
        this.options.put("org.eclipse.jdt.core.formatter.alignment_for_resources_in_try", DefaultCodeFormatterConstants.createAlignmentValue(true, 5, 0));
        this.lineDelimiter = lineDelimiter;
        this.tabWidth = IndentManipulation.getTabWidth(options);
        this.indentWidth = IndentManipulation.getIndentWidth(options);
    }

    public NodeInfoStore getPlaceholders() {
        return this.placeholders;
    }

    public RewriteEventStore getEventStore() {
        return this.eventStore;
    }

    public int getTabWidth() {
        return this.tabWidth;
    }

    public int getIndentWidth() {
        return this.indentWidth;
    }

    public String getLineDelimiter() {
        return this.lineDelimiter;
    }

    public String getFormattedResult(ASTNode node, int initialIndentationLevel, Collection resultingMarkers) {
        ExtendedFlattener flattener = new ExtendedFlattener(this.eventStore);
        node.accept(flattener);
        Position[] markers = flattener.getMarkers();
        int i = 0;
        while (i < markers.length) {
            resultingMarkers.add(markers[i]);
            ++i;
        }
        String unformatted = flattener.getResult();
        TextEdit edit = this.formatNode(node, unformatted, initialIndentationLevel);
        if (edit == null) {
            if (initialIndentationLevel > 0) {
                String indentString = this.createIndentString(initialIndentationLevel);
                ReplaceEdit[] edits = IndentManipulation.getChangeIndentEdits(unformatted, 0, this.tabWidth, this.indentWidth, indentString);
                edit = new MultiTextEdit();
                edit.addChild((TextEdit)new InsertEdit(0, indentString));
                edit.addChildren((TextEdit[])edits);
            } else {
                return unformatted;
            }
        }
        return ASTRewriteFormatter.evaluateFormatterEdit(unformatted, edit, markers);
    }

    public String createIndentString(int indentationUnits) {
        return ToolFactory.createCodeFormatter(this.options).createIndentationString(indentationUnits);
    }

    public String getIndentString(String currentLine) {
        return IndentManipulation.extractIndentString(currentLine, this.tabWidth, this.indentWidth);
    }

    public String changeIndent(String code, int codeIndentLevel, String newIndent) {
        return IndentManipulation.changeIndent(code, codeIndentLevel, this.tabWidth, this.indentWidth, newIndent, this.lineDelimiter);
    }

    public int computeIndentUnits(String line) {
        return IndentManipulation.measureIndentUnits(line, this.tabWidth, this.indentWidth);
    }

    public static String evaluateFormatterEdit(String string, TextEdit edit, Position[] positions) {
        try {
            Document doc = ASTRewriteFormatter.createDocument(string, positions);
            edit.apply((IDocument)doc, 0);
            if (positions != null) {
                int i = 0;
                while (i < positions.length) {
                    Assert.isTrue((!positions[i].isDeleted ? 1 : 0) != 0, (String)"Position got deleted");
                    ++i;
                }
            }
            return doc.get();
        }
        catch (BadLocationException e) {
            Assert.isTrue((boolean)false, (String)("Fromatter created edits with wrong positions: " + e.getMessage()));
            return null;
        }
    }

    public TextEdit formatString(int kind, String string, int offset, int length, int indentationLevel) {
        return ToolFactory.createCodeFormatter(this.options).format(kind, string, offset, length, indentationLevel, this.lineDelimiter);
    }

    private TextEdit formatNode(ASTNode node, String str, int indentationLevel) {
        int code;
        String prefix = "";
        String suffix = "";
        if (node instanceof Statement) {
            code = 2;
            if (node.getNodeType() == 49) {
                prefix = "switch(1) {";
                suffix = "}";
                code = 2;
            }
        } else if (node instanceof Expression && node.getNodeType() != 58) {
            if (node instanceof Annotation) {
                suffix = "\nclass A {}";
                code = 8;
            } else {
                code = 1;
            }
        } else if (node instanceof BodyDeclaration) {
            code = 4;
        } else {
            switch (node.getNodeType()) {
                case 5: 
                case 39: 
                case 43: 
                case 74: 
                case 75: {
                    suffix = " x;";
                    code = 4;
                    break;
                }
                case 76: {
                    prefix = "A<";
                    suffix = "> x;";
                    code = 4;
                    break;
                }
                case 15: {
                    code = 8;
                    break;
                }
                case 44: 
                case 58: {
                    suffix = ";";
                    code = 2;
                    break;
                }
                case 59: {
                    prefix = "A ";
                    suffix = ";";
                    code = 2;
                    break;
                }
                case 26: 
                case 35: {
                    suffix = "\nclass A {}";
                    code = 8;
                    break;
                }
                case 29: {
                    suffix = "\nclass A {}";
                    code = 8;
                    break;
                }
                case 12: {
                    prefix = "try {}";
                    code = 2;
                    break;
                }
                case 1: {
                    prefix = "new A()";
                    suffix = ";";
                    code = 2;
                    break;
                }
                case 80: {
                    prefix = "@Author(";
                    suffix = ") class x {}";
                    code = 8;
                    break;
                }
                case 83: {
                    suffix = " class x {}";
                    code = 8;
                    break;
                }
                case 73: {
                    prefix = "class X<";
                    suffix = "> {}";
                    code = 8;
                    break;
                }
                case 65: 
                case 66: 
                case 67: 
                case 68: 
                case 69: {
                    return null;
                }
                default: {
                    return null;
                }
            }
        }
        String concatStr = String.valueOf(prefix) + str + suffix;
        TextEdit edit = this.formatString(code, concatStr, prefix.length(), str.length(), indentationLevel);
        if (prefix.length() > 0) {
            edit = ASTRewriteFormatter.shifEdit(edit, prefix.length());
        }
        return edit;
    }

    private static TextEdit shifEdit(TextEdit oldEdit, int diff) {
        MultiTextEdit newEdit;
        ReplaceEdit edit;
        if (oldEdit instanceof ReplaceEdit) {
            edit = (ReplaceEdit)oldEdit;
            newEdit = new ReplaceEdit(edit.getOffset() - diff, edit.getLength(), edit.getText());
        } else if (oldEdit instanceof InsertEdit) {
            edit = (InsertEdit)oldEdit;
            newEdit = new InsertEdit(edit.getOffset() - diff, edit.getText());
        } else if (oldEdit instanceof DeleteEdit) {
            edit = (DeleteEdit)oldEdit;
            newEdit = new DeleteEdit(edit.getOffset() - diff, edit.getLength());
        } else if (oldEdit instanceof MultiTextEdit) {
            newEdit = new MultiTextEdit();
        } else {
            return null;
        }
        TextEdit[] children = oldEdit.getChildren();
        int i = 0;
        while (i < children.length) {
            TextEdit shifted = ASTRewriteFormatter.shifEdit(children[i], diff);
            if (shifted != null) {
                newEdit.addChild(shifted);
            }
            ++i;
        }
        return newEdit;
    }

    private static Document createDocument(String string, Position[] positions) throws IllegalArgumentException {
        Document doc;
        block5: {
            doc = new Document(string);
            try {
                if (positions == null) break block5;
                doc.addPositionCategory("myCategory");
                doc.addPositionUpdater((IPositionUpdater)new DefaultPositionUpdater("myCategory"){

                    protected boolean notDeleted() {
                        int start = this.fOffset;
                        int end = start + this.fLength;
                        if (start < this.fPosition.offset && this.fPosition.offset + this.fPosition.length < end) {
                            this.fPosition.offset = end;
                            return false;
                        }
                        return true;
                    }
                });
                int i = 0;
                while (i < positions.length) {
                    try {
                        doc.addPosition("myCategory", positions[i]);
                    }
                    catch (BadLocationException badLocationException) {
                        throw new IllegalArgumentException("Position outside of string. offset: " + positions[i].offset + ", length: " + positions[i].length + ", string size: " + string.length());
                    }
                    ++i;
                }
            }
            catch (BadPositionCategoryException badPositionCategoryException) {}
        }
        return doc;
    }

    public static interface BlockContext {
        public String[] getPrefixAndSuffix(int var1, ASTNode var2, RewriteEventStore var3);
    }

    private class BlockFormattingPrefix
    implements BlockContext {
        private String prefix;
        private int start;

        public BlockFormattingPrefix(String prefix, int start) {
            this.start = start;
            this.prefix = prefix;
        }

        public String[] getPrefixAndSuffix(int indent, ASTNode node, RewriteEventStore events) {
            String nodeString = ASTRewriteFlattener.asString(node, events);
            String str = String.valueOf(this.prefix) + nodeString;
            Position pos = new Position(this.start, this.prefix.length() + 1 - this.start);
            TextEdit res = ASTRewriteFormatter.this.formatString(2, str, 0, str.length(), indent);
            if (res != null) {
                str = ASTRewriteFormatter.evaluateFormatterEdit(str, res, new Position[]{pos});
            }
            return new String[]{str.substring(pos.offset + 1, pos.offset + pos.length - 1), ""};
        }
    }

    private class BlockFormattingPrefixSuffix
    implements BlockContext {
        private String prefix;
        private String suffix;
        private int start;

        public BlockFormattingPrefixSuffix(String prefix, String suffix, int start) {
            this.start = start;
            this.suffix = suffix;
            this.prefix = prefix;
        }

        public String[] getPrefixAndSuffix(int indent, ASTNode node, RewriteEventStore events) {
            String nodeString = ASTRewriteFlattener.asString(node, events);
            int nodeStart = this.prefix.length();
            int nodeEnd = nodeStart + nodeString.length() - 1;
            String str = String.valueOf(this.prefix) + nodeString + this.suffix;
            Position pos1 = new Position(this.start, nodeStart + 1 - this.start);
            Position pos2 = new Position(nodeEnd, 2);
            TextEdit res = ASTRewriteFormatter.this.formatString(2, str, 0, str.length(), indent);
            if (res != null) {
                str = ASTRewriteFormatter.evaluateFormatterEdit(str, res, new Position[]{pos1, pos2});
            }
            return new String[]{str.substring(pos1.offset + 1, pos1.offset + pos1.length - 1), str.substring(pos2.offset + 1, pos2.offset + pos2.length - 1)};
        }
    }

    public static class ConstPrefix
    implements Prefix {
        private String prefix;

        public ConstPrefix(String prefix) {
            this.prefix = prefix;
        }

        public String getPrefix(int indent) {
            return this.prefix;
        }
    }

    private class ExtendedFlattener
    extends ASTRewriteFlattener {
        private ArrayList positions = new ArrayList();

        public ExtendedFlattener(RewriteEventStore store) {
            super(store);
        }

        public void preVisit(ASTNode node) {
            Object placeholderData;
            TextEditGroup trackData = ASTRewriteFormatter.this.getEventStore().getTrackedNodeData(node);
            if (trackData != null) {
                this.addMarker(trackData, this.result.length(), 0);
            }
            if ((placeholderData = ASTRewriteFormatter.this.getPlaceholders().getPlaceholderData(node)) != null) {
                this.addMarker(placeholderData, this.result.length(), 0);
            }
        }

        public void postVisit(ASTNode node) {
            TextEditGroup trackData;
            Object placeholderData = ASTRewriteFormatter.this.getPlaceholders().getPlaceholderData(node);
            if (placeholderData != null) {
                this.fixupLength(placeholderData, this.result.length());
            }
            if ((trackData = ASTRewriteFormatter.this.getEventStore().getTrackedNodeData(node)) != null) {
                this.fixupLength(trackData, this.result.length());
            }
        }

        public boolean visit(Block node) {
            if (ASTRewriteFormatter.this.getPlaceholders().isCollapsed(node)) {
                this.visitList(node, Block.STATEMENTS_PROPERTY, null);
                return false;
            }
            return super.visit(node);
        }

        private NodeMarker addMarker(Object annotation, int startOffset, int length) {
            NodeMarker marker = new NodeMarker();
            marker.offset = startOffset;
            marker.length = length;
            marker.data = annotation;
            this.positions.add(marker);
            return marker;
        }

        private void fixupLength(Object data, int endOffset) {
            int i = this.positions.size() - 1;
            while (i >= 0) {
                NodeMarker marker = (NodeMarker)((Object)this.positions.get(i));
                if (marker.data == data) {
                    marker.length = endOffset - marker.offset;
                    return;
                }
                --i;
            }
        }

        public NodeMarker[] getMarkers() {
            return this.positions.toArray(new NodeMarker[this.positions.size()]);
        }
    }

    private class FormattingPrefix
    implements Prefix {
        private int kind;
        private String string;
        private int start;
        private int length;

        public FormattingPrefix(String string, String sub, int kind) {
            this.start = string.indexOf(sub);
            this.length = sub.length();
            this.string = string;
            this.kind = kind;
        }

        public String getPrefix(int indent) {
            Position pos = new Position(this.start, this.length);
            String str = this.string;
            TextEdit res = ASTRewriteFormatter.this.formatString(this.kind, str, 0, str.length(), indent);
            if (res != null) {
                str = ASTRewriteFormatter.evaluateFormatterEdit(str, res, new Position[]{pos});
            }
            return str.substring(pos.offset + 1, pos.offset + pos.length - 1);
        }
    }

    public static class NodeMarker
    extends Position {
        public Object data;
    }

    public static interface Prefix {
        public String getPrefix(int var1);
    }
}

