/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.equinox.internal.p2.metadata.expression.parser;

import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import org.eclipse.equinox.internal.p2.metadata.Messages;
import org.eclipse.equinox.internal.p2.metadata.expression.LDAPApproximation;
import org.eclipse.equinox.p2.metadata.expression.ExpressionParseException;
import org.eclipse.equinox.p2.metadata.expression.IExpression;
import org.eclipse.equinox.p2.metadata.expression.IExpressionFactory;
import org.eclipse.equinox.p2.metadata.expression.IFilterExpression;
import org.eclipse.equinox.p2.metadata.expression.SimplePattern;
import org.eclipse.osgi.util.NLS;

public class LDAPFilterParser {
    private static final Map<String, IFilterExpression> filterCache = Collections.synchronizedMap(new LinkedHashMap<String, IFilterExpression>(){

        @Override
        public boolean removeEldestEntry(Map.Entry<String, IFilterExpression> expr) {
            return this.size() > 64;
        }
    });
    private final IExpressionFactory factory;
    private final IExpression self;
    private final StringBuffer sb = new StringBuffer();
    private String filterString;
    private int position;

    public LDAPFilterParser(IExpressionFactory factory) {
        this.factory = factory;
        this.self = factory.variable("this");
        this.position = 0;
    }

    public IFilterExpression parse(String filterStr) {
        IFilterExpression filter = filterCache.get(filterStr);
        if (filter != null) {
            return filter;
        }
        LDAPFilterParser lDAPFilterParser = this;
        synchronized (lDAPFilterParser) {
            this.filterString = filterStr;
            this.position = 0;
            try {
                IExpression expr = this.parseFilter();
                if (this.position != this.filterString.length()) {
                    throw this.syntaxException(Messages.filter_trailing_characters);
                }
                filter = this.factory.filterExpression(expr);
                filterCache.put(filterStr, filter);
                return filter;
            }
            catch (StringIndexOutOfBoundsException stringIndexOutOfBoundsException) {
                throw this.syntaxException(Messages.filter_premature_end);
            }
        }
    }

    private IExpression parseAnd() {
        this.skipWhiteSpace();
        char c = this.filterString.charAt(this.position);
        if (c != '(') {
            throw this.syntaxException(Messages.filter_missing_leftparen);
        }
        ArrayList<IExpression> operands = new ArrayList<IExpression>();
        while (c == '(') {
            IExpression child = this.parseFilter();
            if (!operands.contains(child)) {
                operands.add(child);
            }
            c = this.filterString.charAt(this.position);
        }
        return this.factory.normalize(operands, 2);
    }

    private IExpression parseAttr() {
        this.skipWhiteSpace();
        int begin = this.position;
        int end = this.position;
        char c = this.filterString.charAt(begin);
        while (c != '~' && c != '<' && c != '>' && c != '=' && c != '(' && c != ')') {
            ++this.position;
            if (!Character.isWhitespace(c)) {
                end = this.position;
            }
            c = this.filterString.charAt(this.position);
        }
        if (end == begin) {
            throw this.syntaxException(Messages.filter_missing_attr);
        }
        return this.factory.member(this.self, this.filterString.substring(begin, end));
    }

    private IExpression parseFilter() {
        this.skipWhiteSpace();
        if (this.filterString.charAt(this.position) != '(') {
            throw this.syntaxException(Messages.filter_missing_leftparen);
        }
        ++this.position;
        IExpression filter = this.parseFiltercomp();
        this.skipWhiteSpace();
        if (this.filterString.charAt(this.position) != ')') {
            throw this.syntaxException(Messages.filter_missing_rightparen);
        }
        ++this.position;
        this.skipWhiteSpace();
        return filter;
    }

    private IExpression parseFiltercomp() {
        this.skipWhiteSpace();
        char c = this.filterString.charAt(this.position);
        switch (c) {
            case '&': {
                ++this.position;
                return this.parseAnd();
            }
            case '|': {
                ++this.position;
                return this.parseOr();
            }
            case '!': {
                ++this.position;
                return this.parseNot();
            }
        }
        return this.parseItem();
    }

    private IExpression parseItem() {
        IExpression attr = this.parseAttr();
        this.skipWhiteSpace();
        boolean[] hasWild = new boolean[1];
        char c = this.filterString.charAt(this.position);
        switch (c) {
            case '<': 
            case '>': 
            case '~': {
                if (this.filterString.charAt(this.position + 1) != '=') {
                    throw this.syntaxException(Messages.filter_invalid_operator);
                }
                this.position += 2;
                int savePos = this.position;
                String value = this.parseValue(hasWild);
                if (hasWild[0]) {
                    this.position = savePos;
                    throw this.syntaxException(Messages.filter_invalid_value);
                }
                switch (c) {
                    case '>': {
                        return this.factory.greaterEqual(attr, this.factory.constant(value));
                    }
                    case '<': {
                        return this.factory.lessEqual(attr, this.factory.constant(value));
                    }
                }
                return this.factory.matches(attr, this.factory.constant(new LDAPApproximation(value)));
            }
            case '=': {
                ++this.position;
                String value = this.parseValue(hasWild);
                return hasWild[0] ? this.factory.matches(attr, this.factory.constant(SimplePattern.compile(value))) : this.factory.equals(attr, this.factory.constant(value));
            }
        }
        throw this.syntaxException(Messages.filter_invalid_operator);
    }

    private IExpression parseNot() {
        this.skipWhiteSpace();
        if (this.filterString.charAt(this.position) != '(') {
            throw this.syntaxException(Messages.filter_missing_leftparen);
        }
        return this.factory.not(this.parseFilter());
    }

    private IExpression parseOr() {
        this.skipWhiteSpace();
        char c = this.filterString.charAt(this.position);
        if (c != '(') {
            throw this.syntaxException(Messages.filter_missing_leftparen);
        }
        ArrayList<IExpression> operands = new ArrayList<IExpression>();
        while (c == '(') {
            IExpression child = this.parseFilter();
            operands.add(child);
            c = this.filterString.charAt(this.position);
        }
        return this.factory.normalize(operands, 16);
    }

    private static int hexValue(char c) {
        int v = c <= '9' ? c - 48 : (c <= 'F' ? c - 65 + 10 : c - 97 + 10);
        return v;
    }

    private String parseValue(boolean[] hasWildBin) {
        this.sb.setLength(0);
        int savePos = this.position;
        boolean hasEscapedWild = false;
        block6: while (true) {
            char c = this.filterString.charAt(this.position);
            switch (c) {
                case '*': {
                    if (hasEscapedWild && !hasWildBin[0]) {
                        this.position = savePos;
                        hasWildBin[0] = true;
                        return this.parseValue(hasWildBin);
                    }
                    hasWildBin[0] = true;
                    this.sb.append(c);
                    ++this.position;
                    continue block6;
                }
                case ')': {
                    break block6;
                }
                case '(': {
                    throw this.syntaxException(Messages.filter_invalid_value);
                }
                case '\\': {
                    char nc;
                    c = this.filterString.charAt(++this.position);
                    if ((c >= '0' && c <= '9' || c >= 'A' && c <= 'F' || c >= 'a' && c <= 'f' && this.position + 1 < this.filterString.length()) && ((nc = this.filterString.charAt(this.position + 1)) >= '0' && nc <= '9' || nc >= 'A' && nc <= 'F' || nc >= 'a' && nc <= 'f')) {
                        ++this.position;
                        if ((c = (char)(LDAPFilterParser.hexValue(c) << 4 & 0xF0 | LDAPFilterParser.hexValue(nc) & 0xF)) == '*' && hasWildBin != null) {
                            hasEscapedWild = true;
                            if (hasWildBin[0]) {
                                this.sb.append('\\');
                            }
                        }
                    }
                }
                default: {
                    this.sb.append(c);
                    ++this.position;
                    continue block6;
                }
            }
            break;
        }
        if (this.sb.length() == 0) {
            throw this.syntaxException(Messages.filter_missing_value);
        }
        return this.sb.toString();
    }

    private void skipWhiteSpace() {
        int top = this.filterString.length();
        while (this.position < top) {
            if (!Character.isWhitespace(this.filterString.charAt(this.position))) break;
            ++this.position;
        }
    }

    protected ExpressionParseException syntaxException(String message) {
        return new ExpressionParseException(NLS.bind((String)message, (Object)this.filterString, (Object)Integer.toString(this.position)));
    }
}

