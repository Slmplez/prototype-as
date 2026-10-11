/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.p2.metadata.expression.parser;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Stack;
import org.eclipse.equinox.internal.p2.metadata.expression.IExpressionConstants;
import org.eclipse.equinox.internal.p2.metadata.expression.LDAPApproximation;
import org.eclipse.equinox.p2.metadata.expression.ExpressionParseException;
import org.eclipse.equinox.p2.metadata.expression.ExpressionUtil;
import org.eclipse.equinox.p2.metadata.expression.IExpression;
import org.eclipse.equinox.p2.metadata.expression.IExpressionFactory;
import org.eclipse.equinox.p2.metadata.expression.IExpressionParser;
import org.eclipse.equinox.p2.metadata.expression.SimplePattern;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ExpressionParser
extends Stack<IExpression>
implements IExpressionConstants,
IExpressionParser {
    private static final long serialVersionUID = 5481439062356612378L;
    protected static final int TOKEN_OR = 1;
    protected static final int TOKEN_AND = 2;
    protected static final int TOKEN_EQUAL = 10;
    protected static final int TOKEN_NOT_EQUAL = 11;
    protected static final int TOKEN_LESS = 12;
    protected static final int TOKEN_LESS_EQUAL = 13;
    protected static final int TOKEN_GREATER = 14;
    protected static final int TOKEN_GREATER_EQUAL = 15;
    protected static final int TOKEN_MATCHES = 16;
    protected static final int TOKEN_NOT = 20;
    protected static final int TOKEN_DOT = 21;
    protected static final int TOKEN_COMMA = 22;
    protected static final int TOKEN_PIPE = 23;
    protected static final int TOKEN_DOLLAR = 24;
    protected static final int TOKEN_IF = 25;
    protected static final int TOKEN_ELSE = 26;
    protected static final int TOKEN_LP = 30;
    protected static final int TOKEN_RP = 31;
    protected static final int TOKEN_LB = 32;
    protected static final int TOKEN_RB = 33;
    protected static final int TOKEN_LC = 34;
    protected static final int TOKEN_RC = 35;
    protected static final int TOKEN_IDENTIFIER = 40;
    protected static final int TOKEN_LITERAL = 41;
    protected static final int TOKEN_NULL = 50;
    protected static final int TOKEN_TRUE = 51;
    protected static final int TOKEN_FALSE = 52;
    private static final int TOKEN_ALL = 60;
    private static final int TOKEN_EXISTS = 61;
    protected static final int TOKEN_END = 0;
    protected static final int TOKEN_ERROR = -1;
    protected static final Map<String, Integer> keywords = new HashMap<String, Integer>();
    protected final IExpressionFactory factory;
    protected String expression;
    protected int tokenPos;
    protected int currentToken;
    protected int lastTokenPos;
    protected Object tokenValue;
    protected String rootVariable;

    static {
        keywords.put("false", new Integer(52));
        keywords.put("null", new Integer(50));
        keywords.put("true", new Integer(51));
        keywords.put("all", new Integer(60));
        keywords.put("exists", new Integer(61));
    }

    public ExpressionParser(IExpressionFactory factory) {
        this.factory = factory;
    }

    @Override
    public synchronized IExpression parse(String exprString) {
        this.expression = exprString;
        this.tokenPos = 0;
        this.currentToken = 0;
        this.tokenValue = null;
        IExpression thisVariable = this.factory.thisVariable();
        this.rootVariable = ExpressionUtil.getName(thisVariable);
        this.push(thisVariable);
        try {
            this.nextToken();
            IExpression expr = this.currentToken == 0 ? this.factory.constant(Boolean.TRUE) : this.parseCondition();
            this.assertToken(0);
            IExpression iExpression = expr;
            return iExpression;
        }
        finally {
            this.clear();
        }
    }

    @Override
    public synchronized IExpression parseQuery(String exprString) {
        this.expression = exprString;
        this.tokenPos = 0;
        this.currentToken = 0;
        this.tokenValue = null;
        this.rootVariable = "everything";
        IExpression everythingVariable = this.factory.variable("everything");
        this.push(everythingVariable);
        try {
            this.nextToken();
            IExpression expr = this.parseCondition();
            this.assertToken(0);
            IExpression iExpression = expr;
            return iExpression;
        }
        finally {
            this.clear();
        }
    }

    protected Map<String, Integer> keywordToTokenMap() {
        return keywords;
    }

    protected IExpression parseCondition() {
        return this.parseOr();
    }

    protected IExpression parseOr() {
        IExpression expr = this.parseAnd();
        if (this.currentToken != 1) {
            return expr;
        }
        ArrayList<IExpression> exprs = new ArrayList<IExpression>();
        exprs.add(expr);
        do {
            this.nextToken();
            exprs.add(this.parseAnd());
        } while (this.currentToken == 1);
        return this.factory.or(exprs.toArray(new IExpression[exprs.size()]));
    }

    protected IExpression parseAnd() {
        IExpression expr = this.parseBinary();
        if (this.currentToken != 2) {
            return expr;
        }
        ArrayList<IExpression> exprs = new ArrayList<IExpression>();
        exprs.add(expr);
        do {
            this.nextToken();
            exprs.add(this.parseBinary());
        } while (this.currentToken == 2);
        return this.factory.and(exprs.toArray(new IExpression[exprs.size()]));
    }

    protected IExpression parseBinary() {
        IExpression expr = this.parseNot();
        block12: while (true) {
            switch (this.currentToken) {
                case 0: 
                case 1: 
                case 2: 
                case 22: 
                case 25: 
                case 26: 
                case 31: 
                case 33: 
                case 35: {
                    break block12;
                }
                case 10: 
                case 11: 
                case 12: 
                case 13: 
                case 14: 
                case 15: 
                case 16: {
                    int realToken = this.currentToken;
                    this.nextToken();
                    IExpression rhs = realToken == 16 && this.currentToken == 41 && this.tokenValue instanceof String ? this.factory.constant(new LDAPApproximation((String)this.tokenValue)) : this.parseNot();
                    switch (realToken) {
                        case 10: {
                            expr = this.factory.equals(expr, rhs);
                            continue block12;
                        }
                        case 11: {
                            expr = this.factory.not(this.factory.equals(expr, rhs));
                            continue block12;
                        }
                        case 14: {
                            expr = this.factory.greater(expr, rhs);
                            continue block12;
                        }
                        case 15: {
                            expr = this.factory.greaterEqual(expr, rhs);
                            continue block12;
                        }
                        case 12: {
                            expr = this.factory.less(expr, rhs);
                            continue block12;
                        }
                        case 13: {
                            expr = this.factory.lessEqual(expr, rhs);
                            continue block12;
                        }
                    }
                    expr = this.factory.matches(expr, rhs);
                    continue block12;
                }
                default: {
                    throw this.syntaxError();
                }
            }
            break;
        }
        return expr;
    }

    protected IExpression parseNot() {
        if (this.currentToken == 20) {
            this.nextToken();
            IExpression expr = this.parseNot();
            return this.factory.not(expr);
        }
        return this.parseCollectionExpression();
    }

    protected IExpression parseCollectionExpression() {
        IExpression expr = this.parseCollectionLHS();
        if (expr == null) {
            expr = this.parseMember();
            if (this.currentToken != 21) {
                return expr;
            }
            this.nextToken();
        }
        while (true) {
            int funcToken = this.currentToken;
            this.nextToken();
            this.assertToken(30);
            this.nextToken();
            expr = this.parseCollectionRHS(expr, funcToken);
            if (this.currentToken != 21) break;
            this.nextToken();
        }
        return expr;
    }

    protected IExpression parseCollectionLHS() {
        IExpression expr = null;
        switch (this.currentToken) {
            case 60: 
            case 61: {
                expr = this.getVariableOrRootMember(this.rootVariable);
            }
        }
        return expr;
    }

    protected IExpression parseCollectionRHS(IExpression expr, int funcToken) {
        switch (funcToken) {
            case 61: {
                expr = this.factory.exists(expr, this.parseLambdaDefinition());
                break;
            }
            case 60: {
                expr = this.factory.all(expr, this.parseLambdaDefinition());
                break;
            }
            default: {
                throw this.syntaxError();
            }
        }
        return expr;
    }

    protected IExpression parseLambdaDefinition() {
        this.assertToken(40);
        IExpression each = this.factory.variable((String)this.tokenValue);
        this.push(each);
        try {
            this.nextToken();
            this.assertToken(23);
            this.nextToken();
            IExpression body = this.parseCondition();
            this.assertToken(31);
            this.nextToken();
            IExpression iExpression = this.factory.lambda(each, body);
            return iExpression;
        }
        finally {
            this.pop();
        }
    }

    protected IExpression parseMember() {
        IExpression expr = this.parseUnary();
        block3: while (this.currentToken == 21 || this.currentToken == 32) {
            int savePos = this.tokenPos;
            int saveToken = this.currentToken;
            Object saveTokenValue = this.tokenValue;
            this.nextToken();
            if (saveToken == 21) {
                switch (this.currentToken) {
                    case 40: {
                        String name = (String)this.tokenValue;
                        this.nextToken();
                        expr = this.factory.member(expr, name);
                        continue block3;
                    }
                    default: {
                        this.tokenPos = savePos;
                        this.currentToken = saveToken;
                        this.tokenValue = saveTokenValue;
                        return expr;
                    }
                }
            }
            IExpression atExpr = this.parseMember();
            this.assertToken(33);
            this.nextToken();
            expr = this.factory.at(expr, atExpr);
        }
        return expr;
    }

    protected IExpression parseUnary() {
        IExpression expr;
        switch (this.currentToken) {
            case 30: {
                this.nextToken();
                expr = this.parseCondition();
                this.assertToken(31);
                this.nextToken();
                break;
            }
            case 41: {
                expr = this.factory.constant(this.tokenValue);
                this.nextToken();
                break;
            }
            case 40: {
                expr = this.getVariableOrRootMember((String)this.tokenValue);
                this.nextToken();
                break;
            }
            case 50: {
                expr = this.factory.constant(null);
                this.nextToken();
                break;
            }
            case 51: {
                expr = this.factory.constant(Boolean.TRUE);
                this.nextToken();
                break;
            }
            case 52: {
                expr = this.factory.constant(Boolean.FALSE);
                this.nextToken();
                break;
            }
            case 24: {
                expr = this.parseParameter();
                break;
            }
            default: {
                throw this.syntaxError();
            }
        }
        return expr;
    }

    private IExpression parseParameter() {
        if (this.currentToken == 24) {
            this.nextToken();
            if (this.currentToken == 41 && this.tokenValue instanceof Integer) {
                IExpression param = this.factory.indexedParameter((Integer)this.tokenValue);
                this.nextToken();
                return param;
            }
        }
        throw this.syntaxError();
    }

    protected IExpression[] parseArray() {
        IExpression expr = this.parseCondition();
        if (this.currentToken != 22) {
            return new IExpression[]{expr};
        }
        ArrayList<IExpression> operands = new ArrayList<IExpression>();
        operands.add(expr);
        do {
            this.nextToken();
            if (this.currentToken == 34) break;
            operands.add(this.parseCondition());
        } while (this.currentToken == 22);
        return operands.toArray(new IExpression[operands.size()]);
    }

    protected void assertToken(int token) {
        if (this.currentToken != token) {
            throw this.syntaxError();
        }
    }

    protected IExpression getVariableOrRootMember(String id) {
        int idx = this.size();
        while (--idx >= 0) {
            IExpression v = (IExpression)this.get(idx);
            if (!id.equals(v.toString())) continue;
            return v;
        }
        if (this.rootVariable == null || this.rootVariable.equals(id)) {
            throw this.syntaxError(new StringBuffer("No such variable: ").append(id).toString());
        }
        return this.factory.member(this.getVariableOrRootMember(this.rootVariable), id);
    }

    protected void nextToken() {
        this.tokenValue = null;
        int top = this.expression.length();
        char c = '\u0000';
        while (this.tokenPos < top) {
            c = this.expression.charAt(this.tokenPos);
            if (!Character.isWhitespace(c)) break;
            ++this.tokenPos;
        }
        if (this.tokenPos >= top) {
            this.lastTokenPos = top;
            this.currentToken = 0;
            return;
        }
        this.lastTokenPos = this.tokenPos++;
        switch (c) {
            case '|': {
                if (this.tokenPos + 1 < top && this.expression.charAt(this.tokenPos + 1) == '|') {
                    this.tokenValue = "||";
                    this.currentToken = 1;
                    this.tokenPos += 2;
                    break;
                }
                this.currentToken = 23;
                ++this.tokenPos;
                break;
            }
            case '&': {
                if (this.tokenPos + 1 < top && this.expression.charAt(this.tokenPos + 1) == '&') {
                    this.tokenValue = "&&";
                    this.currentToken = 2;
                    this.tokenPos += 2;
                    break;
                }
                this.currentToken = -1;
                break;
            }
            case '=': {
                if (this.tokenPos + 1 < top && this.expression.charAt(this.tokenPos + 1) == '=') {
                    this.tokenValue = "==";
                    this.currentToken = 10;
                    this.tokenPos += 2;
                    break;
                }
                this.currentToken = -1;
                break;
            }
            case '!': {
                if (this.tokenPos + 1 < top && this.expression.charAt(this.tokenPos + 1) == '=') {
                    this.tokenValue = "!=";
                    this.currentToken = 11;
                    this.tokenPos += 2;
                    break;
                }
                this.currentToken = 20;
                ++this.tokenPos;
                break;
            }
            case '~': {
                if (this.tokenPos + 1 < top && this.expression.charAt(this.tokenPos + 1) == '=') {
                    this.tokenValue = "~=";
                    this.currentToken = 16;
                    this.tokenPos += 2;
                    break;
                }
                this.currentToken = -1;
                break;
            }
            case '>': {
                if (this.tokenPos + 1 < top && this.expression.charAt(this.tokenPos + 1) == '=') {
                    this.tokenValue = ">=";
                    this.currentToken = 15;
                    this.tokenPos += 2;
                    break;
                }
                this.currentToken = 14;
                ++this.tokenPos;
                break;
            }
            case '<': {
                if (this.tokenPos + 1 < top && this.expression.charAt(this.tokenPos + 1) == '=') {
                    this.tokenValue = "<=";
                    this.currentToken = 13;
                    this.tokenPos += 2;
                    break;
                }
                this.currentToken = 12;
                ++this.tokenPos;
                break;
            }
            case '?': {
                this.currentToken = 25;
                break;
            }
            case ':': {
                this.currentToken = 26;
                ++this.tokenPos;
                break;
            }
            case '.': {
                this.currentToken = 21;
                ++this.tokenPos;
                break;
            }
            case '$': {
                this.currentToken = 24;
                ++this.tokenPos;
                break;
            }
            case '{': {
                this.currentToken = 34;
                ++this.tokenPos;
                break;
            }
            case '}': {
                this.currentToken = 35;
                ++this.tokenPos;
                break;
            }
            case '(': {
                this.currentToken = 30;
                ++this.tokenPos;
                break;
            }
            case ')': {
                this.currentToken = 31;
                ++this.tokenPos;
                break;
            }
            case '[': {
                this.currentToken = 32;
                ++this.tokenPos;
                break;
            }
            case ']': {
                this.currentToken = 33;
                ++this.tokenPos;
                break;
            }
            case ',': {
                this.currentToken = 22;
                ++this.tokenPos;
                break;
            }
            case '\"': 
            case '\'': {
                this.parseDelimitedString(c);
                break;
            }
            case '/': {
                this.parseDelimitedString(c);
                if (this.currentToken != 41) break;
                this.tokenValue = SimplePattern.compile((String)this.tokenValue);
                break;
            }
            default: {
                if (Character.isDigit(c)) {
                    int start = this.tokenPos++;
                    while (this.tokenPos < top && Character.isDigit(this.expression.charAt(this.tokenPos))) {
                        ++this.tokenPos;
                    }
                    this.tokenValue = Integer.valueOf(this.expression.substring(start, this.tokenPos));
                    this.currentToken = 41;
                    break;
                }
                if (Character.isJavaIdentifierStart(c)) {
                    int start = this.tokenPos++;
                    while (this.tokenPos < top && Character.isJavaIdentifierPart(this.expression.charAt(this.tokenPos))) {
                        ++this.tokenPos;
                    }
                    String word = this.expression.substring(start, this.tokenPos);
                    Integer token = this.keywordToTokenMap().get(word);
                    this.currentToken = token == null ? 40 : token;
                    this.tokenValue = word;
                    break;
                }
                throw this.syntaxError();
            }
        }
    }

    protected void popVariable() {
        if (this.isEmpty()) {
            throw this.syntaxError();
        }
        this.pop();
    }

    protected ExpressionParseException syntaxError() {
        Object tv = this.tokenValue;
        if (tv == null) {
            if (this.lastTokenPos >= this.expression.length()) {
                return this.syntaxError("Unexpected end of expression");
            }
            tv = this.expression.substring(this.lastTokenPos, this.lastTokenPos + 1);
        }
        return this.syntaxError(new StringBuffer("Unexpected token \"").append(tv).append('\"').toString());
    }

    protected ExpressionParseException syntaxError(String message) {
        return new ExpressionParseException(this.expression, message, this.tokenPos);
    }

    private void parseDelimitedString(char delim) {
        int start = ++this.tokenPos;
        StringBuffer buf = new StringBuffer();
        int top = this.expression.length();
        while (this.tokenPos < top) {
            char ec = this.expression.charAt(this.tokenPos);
            if (ec == delim) break;
            if (ec == '\\') {
                if (++this.tokenPos == top) break;
                ec = this.expression.charAt(this.tokenPos);
            }
            buf.append(ec);
            ++this.tokenPos;
        }
        if (this.tokenPos == top) {
            this.tokenPos = start - 1;
            this.currentToken = -1;
        } else {
            ++this.tokenPos;
            this.tokenValue = buf.toString();
            this.currentToken = 41;
        }
    }
}

