<!-- 
프로그램명 : 로그인 페이지 구현
작성자 : 임경수, 반건우 
작성일자 : 2020-12-16
프로그램 설명 : 떼껄룩의 로그인 페이지 구현, 회원가입과 비밀번호도 이곳에서 찾을 수 있도록 한다
-->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
	<title>TakeALook</title>
    <!--디자인 스타일-->
    <style>
        *, ::after, ::before {
            box-sizing: border-box;
        }
        html {
            font-family: sans-serif;
            line-height: 1.15;
            -webkit-text-size-adjust: 100%;
            -webkit-tap-highlight-color: transparent;
        }
        article, aside, figcaption, figure, footer, header, hgroup, main, nav, section {
            display: block;
        }
        body {
            margin: 0;
            font-family: -apple-system,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,"Noto Sans",sans-serif,"Apple Color Emoji","Segoe UI Emoji","Segoe UI Symbol","Noto Color Emoji";
            font-size: 1rem;
            font-weight: 400;
            line-height: 1.5;
            color: #212529;
            text-align: left;
            background-color: #fff;
        }
        [tabindex="-1"]:focus:not(:focus-visible) {
            outline: 0 !important;
        }
        hr {
            box-sizing: content-box;
            height: 0;
            overflow: visible;
        }
        h1, h2, h3, h4, h5, h6 {
            margin-top: 0;
            margin-bottom: .5rem;
        }
        p {
            margin-top: 0;
            margin-bottom: 1rem;
        }
        abbr[data-original-title], abbr[title] {
            text-decoration: underline;
            -webkit-text-decoration: underline dotted;
            text-decoration: underline dotted;
            cursor: help;
            border-bottom: 0;
            -webkit-text-decoration-skip-ink: none;
            text-decoration-skip-ink: none;
        }
        address {
            margin-bottom: 1rem;
            font-style: normal;
            line-height: inherit;
        }
        dl, ol, ul {
            margin-top: 0;
            margin-bottom: 1rem;
        }
            ol ol, ol ul, ul ol, ul ul {
                margin-bottom: 0;
            }
        dt {
            font-weight: 700;
        }
        dd {
            margin-bottom: .5rem;
            margin-left: 0;
        }
        blockquote {
            margin: 0 0 1rem;
        }
        b, strong {
            font-weight: bolder;
        }
        small {
            font-size: 80%;
        }
        sub, sup {
            position: relative;
            font-size: 75%;
            line-height: 0;
            vertical-align: baseline;
        }
        sub {
            bottom: -.25em;
        }
        sup {
            top: -.5em;
        }
        a {
            color: #007bff;
            text-decoration: none;
            background-color: transparent;
        }
            a:hover {
                color: #0056b3;
                text-decoration: underline;
            }
            a:not([href]) {
                color: inherit;
                text-decoration: none;
            }
                a:not([href]):hover {
                    color: inherit;
                    text-decoration: none;
                }
        code, kbd, pre, samp {
            font-family: SFMono-Regular,Menlo,Monaco,Consolas,"Liberation Mono","Courier New",monospace;
            font-size: 1em;
        }
        pre {
            margin-top: 0;
            margin-bottom: 1rem;
            overflow: auto;
        }
        figure {
            margin: 0 0 1rem;
        }
        img {
            vertical-align: middle;
            border-style: none;
        }
        svg {
            overflow: hidden;
            vertical-align: middle;
        }
        table {
            border-collapse: collapse;
        }
        caption {
            padding-top: .75rem;
            padding-bottom: .75rem;
            color: #6c757d;
            text-align: left;
            caption-side: bottom;
        }
        th {
            text-align: inherit;
        }
        label {
            display: inline-block;
            margin-bottom: .5rem;
        }
        button {
            border-radius: 0;
        }
            button:focus {
                outline: 1px dotted;
                outline: 5px auto -webkit-focus-ring-color;
            }
        button, input, optgroup, select, textarea {
            margin: 0;
            font-family: inherit;
            font-size: inherit;
            line-height: inherit;
        }
        button, input {
            overflow: visible;
        }
        button, select {
            text-transform: none;
        }
        select {
            word-wrap: normal;
        }
        [type=button], [type=reset], [type=submit], button {
            -webkit-appearance: button;
        }
            [type=button]:not(:disabled), [type=reset]:not(:disabled), [type=submit]:not(:disabled), button:not(:disabled) {
                cursor: pointer;
            }
            [type=button]::-moz-focus-inner, [type=reset]::-moz-focus-inner, [type=submit]::-moz-focus-inner, button::-moz-focus-inner {
                padding: 0;
                border-style: none;
            }
        input[type=checkbox], input[type=radio] {
            box-sizing: border-box;
            padding: 0;
        }
        input[type=date], input[type=datetime-local], input[type=month], input[type=time] {
            -webkit-appearance: listbox;
        }
        textarea {
            overflow: auto;
            resize: vertical;
        }
        fieldset {
            min-width: 0;
            padding: 0;
            margin: 0;
            border: 0;
        }
        legend {
            display: block;
            width: 100%;
            max-width: 100%;
            padding: 0;
            margin-bottom: .5rem;
            font-size: 1.5rem;
            line-height: inherit;
            color: inherit;
            white-space: normal;
        }
        progress {
            vertical-align: baseline;
        }
        [type=number]::-webkit-inner-spin-button, [type=number]::-webkit-outer-spin-button {
            height: auto;
        }
        [type=search] {
            outline-offset: -2px;
            -webkit-appearance: none;
        }
            [type=search]::-webkit-search-decoration {
                -webkit-appearance: none;
            }
        ::-webkit-file-upload-button {
            font: inherit;
            -webkit-appearance: button;
        }
        output {
            display: inline-block;
        }
        summary {
            display: list-item;
            cursor: pointer;
        }
        template {
            display: none;
        }
        [hidden] {
            display: none !important;
        }
        .h1, .h2, .h3, .h4, .h5, .h6, h1, h2, h3, h4, h5, h6 {
            margin-bottom: .5rem;
            font-weight: 500;
            line-height: 1.2;
        }
        .h1, h1 {
            font-size: 2.5rem;
        }
        .h2, h2 {
            font-size: 2rem;
        }
        .h3, h3 {
            font-size: 1.75rem;
        }
        .h4, h4 {
            font-size: 1.5rem;
        }
        .h5, h5 {
            font-size: 1.25rem;
        }
        .h6, h6 {
            font-size: 1rem;
        }
        .lead {
            font-size: 1.25rem;
            font-weight: 300;
        }
        .display-1 {
            font-size: 6rem;
            font-weight: 300;
            line-height: 1.2;
        }
        .display-2 {
            font-size: 5.5rem;
            font-weight: 300;
            line-height: 1.2;
        }
        .display-3 {
            font-size: 4.5rem;
            font-weight: 300;
            line-height: 1.2;
        }
        .display-4 {
            font-size: 3.5rem;
            font-weight: 300;
            line-height: 1.2;
        }
        hr {
            margin-top: 1rem;
            margin-bottom: 1rem;
            border: 0;
            border-top: 1px solid rgba(0,0,0,.1);
        }
        .small, small {
            font-size: 80%;
            font-weight: 400;
        }
        .mark, mark {
            padding: .2em;
            background-color: #fcf8e3;
        }
        .list-unstyled {
            padding-left: 0;
            list-style: none;
        }
        .list-inline {
            padding-left: 0;
            list-style: none;
        }
        .list-inline-item {
            display: inline-block;
        }
            .list-inline-item:not(:last-child) {
                margin-right: .5rem;
            }
        .initialism {
            font-size: 90%;
            text-transform: uppercase;
        }
        .blockquote {
            margin-bottom: 1rem;
            font-size: 1.25rem;
        }
        .blockquote-footer {
            display: block;
            font-size: 80%;
            color: #6c757d;
        }
            .blockquote-footer::before {
                content: "\2014\00A0";
            }
        .img-fluid {
            max-width: 100%;
            height: auto;
        }
        .img-thumbnail {
            padding: .25rem;
            background-color: #fff;
            border: 1px solid #dee2e6;
            border-radius: .25rem;
            max-width: 100%;
            height: auto;
        }
        .figure {
            display: inline-block;
        }
        .figure-img {
            margin-bottom: .5rem;
            line-height: 1;
        }
        .figure-caption {
            font-size: 90%;
            color: #6c757d;
        }
        code {
            font-size: 87.5%;
            color: #e83e8c;
            word-wrap: break-word;
        }
        a > code {
            color: inherit;
        }
        kbd {
            padding: .2rem .4rem;
            font-size: 87.5%;
            color: #fff;
            background-color: #212529;
            border-radius: .2rem;
        }
            kbd kbd {
                padding: 0;
                font-size: 100%;
                font-weight: 700;
            }
        pre {
            display: block;
            font-size: 87.5%;
            color: #212529;
        }
            pre code {
                font-size: inherit;
                color: inherit;
                word-break: normal;
            }
        .pre-scrollable {
            max-height: 340px;
            overflow-y: scroll;
        }
        .container {
            width: 100%;
            padding-right: 15px;
            padding-left: 15px;
            margin-right: auto;
            margin-left: auto;
        }
        @media (min-width:576px) {
            .container {
                max-width: 540px;
            }
        }
        @media (min-width:768px) {
            .container {
                max-width: 720px;
            }
        }
        @media (min-width:992px) {
            .container {
                max-width: 960px;
            }
        }
        @media (min-width:1200px) {
            .container {
                max-width: 1140px;
            }
        }
        .container-fluid, .container-lg, .container-md, .container-sm, .container-xl {
            width: 100%;
            padding-right: 15px;
            padding-left: 15px;
            margin-right: auto;
            margin-left: auto;
        }
        @media (min-width:576px) {
            .container, .container-sm {
                max-width: 540px;
            }
        }
        @media (min-width:768px) {
            .container, .container-md, .container-sm {
                max-width: 720px;
            }
        }
        @media (min-width:992px) {
            .container, .container-lg, .container-md, .container-sm {
                max-width: 960px;
            }
        }
        @media (min-width:1200px) {
            .container, .container-lg, .container-md, .container-sm, .container-xl {
                max-width: 1140px;
            }
        }
        .row {
            display: -ms-flexbox;
            display: flex;
            -ms-flex-wrap: wrap;
            flex-wrap: wrap;
            margin-right: -15px;
            margin-left: -15px;
        }
        .no-gutters {
            margin-right: 0;
            margin-left: 0;
        }
            .no-gutters > .col, .no-gutters > [class*=col-] {
                padding-right: 0;
                padding-left: 0;
            }
        .col, .col-1, .col-10, .col-11, .col-12, .col-2, .col-3, .col-4, .col-5, .col-6, .col-7, .col-8, .col-9, .col-auto, .col-lg, .col-lg-1, .col-lg-10, .col-lg-11, .col-lg-12, .col-lg-2, .col-lg-3, .col-lg-4, .col-lg-5, .col-lg-6, .col-lg-7, .col-lg-8, .col-lg-9, .col-lg-auto, .col-md, .col-md-1, .col-md-10, .col-md-11, .col-md-12, .col-md-2, .col-md-3, .col-md-4, .col-md-5, .col-md-6, .col-md-7, .col-md-8, .col-md-9, .col-md-auto, .col-sm, .col-sm-1, .col-sm-10, .col-sm-11, .col-sm-12, .col-sm-2, .col-sm-3, .col-sm-4, .col-sm-5, .col-sm-6, .col-sm-7, .col-sm-8, .col-sm-9, .col-sm-auto, .col-xl, .col-xl-1, .col-xl-10, .col-xl-11, .col-xl-12, .col-xl-2, .col-xl-3, .col-xl-4, .col-xl-5, .col-xl-6, .col-xl-7, .col-xl-8, .col-xl-9, .col-xl-auto {
            position: relative;
            width: 100%;
            padding-right: 15px;
            padding-left: 15px;
        }
        .col {
            -ms-flex-preferred-size: 0;
            flex-basis: 0;
            -ms-flex-positive: 1;
            flex-grow: 1;
            max-width: 100%;
        }
        .row-cols-1 > * {
            -ms-flex: 0 0 100%;
            flex: 0 0 100%;
            max-width: 100%;
        }
        .row-cols-2 > * {
            -ms-flex: 0 0 50%;
            flex: 0 0 50%;
            max-width: 50%;
        }
        .row-cols-3 > * {
            -ms-flex: 0 0 33.333333%;
            flex: 0 0 33.333333%;
            max-width: 33.333333%;
        }
        .row-cols-4 > * {
            -ms-flex: 0 0 25%;
            flex: 0 0 25%;
            max-width: 25%;
        }
        .row-cols-5 > * {
            -ms-flex: 0 0 20%;
            flex: 0 0 20%;
            max-width: 20%;
        }
        .row-cols-6 > * {
            -ms-flex: 0 0 16.666667%;
            flex: 0 0 16.666667%;
            max-width: 16.666667%;
        }
        .col-auto {
            -ms-flex: 0 0 auto;
            flex: 0 0 auto;
            width: auto;
            max-width: 100%;
        }
        .col-1 {
            -ms-flex: 0 0 8.333333%;
            flex: 0 0 8.333333%;
            max-width: 8.333333%;
        }
        .col-2 {
            -ms-flex: 0 0 16.666667%;
            flex: 0 0 16.666667%;
            max-width: 16.666667%;
        }
        .col-3 {
            -ms-flex: 0 0 25%;
            flex: 0 0 25%;
            max-width: 25%;
        }
        .col-4 {
            -ms-flex: 0 0 33.333333%;
            flex: 0 0 33.333333%;
            max-width: 33.333333%;
        }
        .col-5 {
            -ms-flex: 0 0 41.666667%;
            flex: 0 0 41.666667%;
            max-width: 41.666667%;
        }
        .col-6 {
            -ms-flex: 0 0 50%;
            flex: 0 0 50%;
            max-width: 50%;
        }
        .col-7 {
            -ms-flex: 0 0 58.333333%;
            flex: 0 0 58.333333%;
            max-width: 58.333333%;
        }
        .col-8 {
            -ms-flex: 0 0 66.666667%;
            flex: 0 0 66.666667%;
            max-width: 66.666667%;
        }
        .col-9 {
            -ms-flex: 0 0 75%;
            flex: 0 0 75%;
            max-width: 75%;
        }
        .col-10 {
            -ms-flex: 0 0 83.333333%;
            flex: 0 0 83.333333%;
            max-width: 83.333333%;
        }
        .col-11 {
            -ms-flex: 0 0 91.666667%;
            flex: 0 0 91.666667%;
            max-width: 91.666667%;
        }
        .col-12 {
            -ms-flex: 0 0 100%;
            flex: 0 0 100%;
            max-width: 100%;
        }
        .order-first {
            -ms-flex-order: -1;
            order: -1;
        }
        .order-last {
            -ms-flex-order: 13;
            order: 13;
        }
        .order-0 {
            -ms-flex-order: 0;
            order: 0;
        }
        .order-1 {
            -ms-flex-order: 1;
            order: 1;
        }
        .order-2 {
            -ms-flex-order: 2;
            order: 2;
        }
        .order-3 {
            -ms-flex-order: 3;
            order: 3;
        }
        .order-4 {
            -ms-flex-order: 4;
            order: 4;
        }
        .order-5 {
            -ms-flex-order: 5;
            order: 5;
        }
        .order-6 {
            -ms-flex-order: 6;
            order: 6;
        }
        .order-7 {
            -ms-flex-order: 7;
            order: 7;
        }
        .order-8 {
            -ms-flex-order: 8;
            order: 8;
        }
        .order-9 {
            -ms-flex-order: 9;
            order: 9;
        }
        .order-10 {
            -ms-flex-order: 10;
            order: 10;
        }
        .order-11 {
            -ms-flex-order: 11;
            order: 11;
        }
        .order-12 {
            -ms-flex-order: 12;
            order: 12;
        }
        .offset-1 {
            margin-left: 8.333333%;
        }
        .offset-2 {
            margin-left: 16.666667%;
        }
        .offset-3 {
            margin-left: 25%;
        }
        .offset-4 {
            margin-left: 33.333333%;
        }
        .offset-5 {
            margin-left: 41.666667%;
        }
        .offset-6 {
            margin-left: 50%;
        }
        .offset-7 {
            margin-left: 58.333333%;
        }
        .offset-8 {
            margin-left: 66.666667%;
        }
        .offset-9 {
            margin-left: 75%;
        }
        .offset-10 {
            margin-left: 83.333333%;
        }
        .offset-11 {
            margin-left: 91.666667%;
        }
        @media (min-width:576px) {
            .col-sm {
                -ms-flex-preferred-size: 0;
                flex-basis: 0;
                -ms-flex-positive: 1;
                flex-grow: 1;
                max-width: 100%;
            }
            .row-cols-sm-1 > * {
                -ms-flex: 0 0 100%;
                flex: 0 0 100%;
                max-width: 100%;
            }
            .row-cols-sm-2 > * {
                -ms-flex: 0 0 50%;
                flex: 0 0 50%;
                max-width: 50%;
            }
            .row-cols-sm-3 > * {
                -ms-flex: 0 0 33.333333%;
                flex: 0 0 33.333333%;
                max-width: 33.333333%;
            }
            .row-cols-sm-4 > * {
                -ms-flex: 0 0 25%;
                flex: 0 0 25%;
                max-width: 25%;
            }
            .row-cols-sm-5 > * {
                -ms-flex: 0 0 20%;
                flex: 0 0 20%;
                max-width: 20%;
            }
            .row-cols-sm-6 > * {
                -ms-flex: 0 0 16.666667%;
                flex: 0 0 16.666667%;
                max-width: 16.666667%;
            }
            .col-sm-auto {
                -ms-flex: 0 0 auto;
                flex: 0 0 auto;
                width: auto;
                max-width: 100%;
            }
            .col-sm-1 {
                -ms-flex: 0 0 8.333333%;
                flex: 0 0 8.333333%;
                max-width: 8.333333%;
            }
            .col-sm-2 {
                -ms-flex: 0 0 16.666667%;
                flex: 0 0 16.666667%;
                max-width: 16.666667%;
            }
            .col-sm-3 {
                -ms-flex: 0 0 25%;
                flex: 0 0 25%;
                max-width: 25%;
            }
            .col-sm-4 {
                -ms-flex: 0 0 33.333333%;
                flex: 0 0 33.333333%;
                max-width: 33.333333%;
            }
            .col-sm-5 {
                -ms-flex: 0 0 41.666667%;
                flex: 0 0 41.666667%;
                max-width: 41.666667%;
            }
            .col-sm-6 {
                -ms-flex: 0 0 50%;
                flex: 0 0 50%;
                max-width: 50%;
            }
            .col-sm-7 {
                -ms-flex: 0 0 58.333333%;
                flex: 0 0 58.333333%;
                max-width: 58.333333%;
            }
            .col-sm-8 {
                -ms-flex: 0 0 66.666667%;
                flex: 0 0 66.666667%;
                max-width: 66.666667%;
            }
            .col-sm-9 {
                -ms-flex: 0 0 75%;
                flex: 0 0 75%;
                max-width: 75%;
            }
            .col-sm-10 {
                -ms-flex: 0 0 83.333333%;
                flex: 0 0 83.333333%;
                max-width: 83.333333%;
            }
            .col-sm-11 {
                -ms-flex: 0 0 91.666667%;
                flex: 0 0 91.666667%;
                max-width: 91.666667%;
            }
            .col-sm-12 {
                -ms-flex: 0 0 100%;
                flex: 0 0 100%;
                max-width: 100%;
            }
            .order-sm-first {
                -ms-flex-order: -1;
                order: -1;
            }
            .order-sm-last {
                -ms-flex-order: 13;
                order: 13;
            }
            .order-sm-0 {
                -ms-flex-order: 0;
                order: 0;
            }
            .order-sm-1 {
                -ms-flex-order: 1;
                order: 1;
            }
            .order-sm-2 {
                -ms-flex-order: 2;
                order: 2;
            }
            .order-sm-3 {
                -ms-flex-order: 3;
                order: 3;
            }
            .order-sm-4 {
                -ms-flex-order: 4;
                order: 4;
            }
            .order-sm-5 {
                -ms-flex-order: 5;
                order: 5;
            }
            .order-sm-6 {
                -ms-flex-order: 6;
                order: 6;
            }
            .order-sm-7 {
                -ms-flex-order: 7;
                order: 7;
            }
            .order-sm-8 {
                -ms-flex-order: 8;
                order: 8;
            }
            .order-sm-9 {
                -ms-flex-order: 9;
                order: 9;
            }
            .order-sm-10 {
                -ms-flex-order: 10;
                order: 10;
            }
            .order-sm-11 {
                -ms-flex-order: 11;
                order: 11;
            }
            .order-sm-12 {
                -ms-flex-order: 12;
                order: 12;
            }
            .offset-sm-0 {
                margin-left: 0;
            }
            .offset-sm-1 {
                margin-left: 8.333333%;
            }
            .offset-sm-2 {
                margin-left: 16.666667%;
            }
            .offset-sm-3 {
                margin-left: 25%;
            }
            .offset-sm-4 {
                margin-left: 33.333333%;
            }
            .offset-sm-5 {
                margin-left: 41.666667%;
            }
            .offset-sm-6 {
                margin-left: 50%;
            }
            .offset-sm-7 {
                margin-left: 58.333333%;
            }
            .offset-sm-8 {
                margin-left: 66.666667%;
            }
            .offset-sm-9 {
                margin-left: 75%;
            }
            .offset-sm-10 {
                margin-left: 83.333333%;
            }
            .offset-sm-11 {
                margin-left: 91.666667%;
            }
        }
        @media (min-width:768px) {
            .col-md {
                -ms-flex-preferred-size: 0;
                flex-basis: 0;
                -ms-flex-positive: 1;
                flex-grow: 1;
                max-width: 100%;
            }
            .row-cols-md-1 > * {
                -ms-flex: 0 0 100%;
                flex: 0 0 100%;
                max-width: 100%;
            }
            .row-cols-md-2 > * {
                -ms-flex: 0 0 50%;
                flex: 0 0 50%;
                max-width: 50%;
            }
            .row-cols-md-3 > * {
                -ms-flex: 0 0 33.333333%;
                flex: 0 0 33.333333%;
                max-width: 33.333333%;
            }
            .row-cols-md-4 > * {
                -ms-flex: 0 0 25%;
                flex: 0 0 25%;
                max-width: 25%;
            }
            .row-cols-md-5 > * {
                -ms-flex: 0 0 20%;
                flex: 0 0 20%;
                max-width: 20%;
            }
            .row-cols-md-6 > * {
                -ms-flex: 0 0 16.666667%;
                flex: 0 0 16.666667%;
                max-width: 16.666667%;
            }
            .col-md-auto {
                -ms-flex: 0 0 auto;
                flex: 0 0 auto;
                width: auto;
                max-width: 100%;
            }
            .col-md-1 {
                -ms-flex: 0 0 8.333333%;
                flex: 0 0 8.333333%;
                max-width: 8.333333%;
            }
            .col-md-2 {
                -ms-flex: 0 0 16.666667%;
                flex: 0 0 16.666667%;
                max-width: 16.666667%;
            }
            .col-md-3 {
                -ms-flex: 0 0 25%;
                flex: 0 0 25%;
                max-width: 25%;
            }
            .col-md-4 {
                -ms-flex: 0 0 33.333333%;
                flex: 0 0 33.333333%;
                max-width: 33.333333%;
            }
            .col-md-5 {
                -ms-flex: 0 0 41.666667%;
                flex: 0 0 41.666667%;
                max-width: 41.666667%;
            }
            .col-md-6 {
                -ms-flex: 0 0 50%;
                flex: 0 0 50%;
                max-width: 50%;
            }
            .col-md-7 {
                -ms-flex: 0 0 58.333333%;
                flex: 0 0 58.333333%;
                max-width: 58.333333%;
            }
            .col-md-8 {
                -ms-flex: 0 0 66.666667%;
                flex: 0 0 66.666667%;
                max-width: 66.666667%;
            }
            .col-md-9 {
                -ms-flex: 0 0 75%;
                flex: 0 0 75%;
                max-width: 75%;
            }
            .col-md-10 {
                -ms-flex: 0 0 83.333333%;
                flex: 0 0 83.333333%;
                max-width: 83.333333%;
            }
            .col-md-11 {
                -ms-flex: 0 0 91.666667%;
                flex: 0 0 91.666667%;
                max-width: 91.666667%;
            }
            .col-md-12 {
                -ms-flex: 0 0 100%;
                flex: 0 0 100%;
                max-width: 100%;
            }
            .order-md-first {
                -ms-flex-order: -1;
                order: -1;
            }
            .order-md-last {
                -ms-flex-order: 13;
                order: 13;
            }
            .order-md-0 {
                -ms-flex-order: 0;
                order: 0;
            }
            .order-md-1 {
                -ms-flex-order: 1;
                order: 1;
            }
            .order-md-2 {
                -ms-flex-order: 2;
                order: 2;
            }
            .order-md-3 {
                -ms-flex-order: 3;
                order: 3;
            }
            .order-md-4 {
                -ms-flex-order: 4;
                order: 4;
            }
            .order-md-5 {
                -ms-flex-order: 5;
                order: 5;
            }
            .order-md-6 {
                -ms-flex-order: 6;
                order: 6;
            }
            .order-md-7 {
                -ms-flex-order: 7;
                order: 7;
            }
            .order-md-8 {
                -ms-flex-order: 8;
                order: 8;
            }
            .order-md-9 {
                -ms-flex-order: 9;
                order: 9;
            }
            .order-md-10 {
                -ms-flex-order: 10;
                order: 10;
            }
            .order-md-11 {
                -ms-flex-order: 11;
                order: 11;
            }
            .order-md-12 {
                -ms-flex-order: 12;
                order: 12;
            }
            .offset-md-0 {
                margin-left: 0;
            }
            .offset-md-1 {
                margin-left: 8.333333%;
            }
            .offset-md-2 {
                margin-left: 16.666667%;
            }
            .offset-md-3 {
                margin-left: 25%;
            }
            .offset-md-4 {
                margin-left: 33.333333%;
            }
            .offset-md-5 {
                margin-left: 41.666667%;
            }
            .offset-md-6 {
                margin-left: 50%;
            }
            .offset-md-7 {
                margin-left: 58.333333%;
            }
            .offset-md-8 {
                margin-left: 66.666667%;
            }
            .offset-md-9 {
                margin-left: 75%;
            }
            .offset-md-10 {
                margin-left: 83.333333%;
            }
            .offset-md-11 {
                margin-left: 91.666667%;
            }
        }
        @media (min-width:992px) {
            .col-lg {
                -ms-flex-preferred-size: 0;
                flex-basis: 0;
                -ms-flex-positive: 1;
                flex-grow: 1;
                max-width: 100%;
            }
            .row-cols-lg-1 > * {
                -ms-flex: 0 0 100%;
                flex: 0 0 100%;
                max-width: 100%;
            }
            .row-cols-lg-2 > * {
                -ms-flex: 0 0 50%;
                flex: 0 0 50%;
                max-width: 50%;
            }
            .row-cols-lg-3 > * {
                -ms-flex: 0 0 33.333333%;
                flex: 0 0 33.333333%;
                max-width: 33.333333%;
            }
            .row-cols-lg-4 > * {
                -ms-flex: 0 0 25%;
                flex: 0 0 25%;
                max-width: 25%;
            }
            .row-cols-lg-5 > * {
                -ms-flex: 0 0 20%;
                flex: 0 0 20%;
                max-width: 20%;
            }
            .row-cols-lg-6 > * {
                -ms-flex: 0 0 16.666667%;
                flex: 0 0 16.666667%;
                max-width: 16.666667%;
            }
            .col-lg-auto {
                -ms-flex: 0 0 auto;
                flex: 0 0 auto;
                width: auto;
                max-width: 100%;
            }
            .col-lg-1 {
                -ms-flex: 0 0 8.333333%;
                flex: 0 0 8.333333%;
                max-width: 8.333333%;
            }
            .col-lg-2 {
                -ms-flex: 0 0 16.666667%;
                flex: 0 0 16.666667%;
                max-width: 16.666667%;
            }
            .col-lg-3 {
                -ms-flex: 0 0 25%;
                flex: 0 0 25%;
                max-width: 25%;
            }
            .col-lg-4 {
                -ms-flex: 0 0 33.333333%;
                flex: 0 0 33.333333%;
                max-width: 33.333333%;
            }
            .col-lg-5 {
                -ms-flex: 0 0 41.666667%;
                flex: 0 0 41.666667%;
                max-width: 41.666667%;
            }
            .col-lg-6 {
                -ms-flex: 0 0 50%;
                flex: 0 0 50%;
                max-width: 50%;
            }
            .col-lg-7 {
                -ms-flex: 0 0 58.333333%;
                flex: 0 0 58.333333%;
                max-width: 58.333333%;
            }
            .col-lg-8 {
                -ms-flex: 0 0 66.666667%;
                flex: 0 0 66.666667%;
                max-width: 66.666667%;
            }
            .col-lg-9 {
                -ms-flex: 0 0 75%;
                flex: 0 0 75%;
                max-width: 75%;
            }
            .col-lg-10 {
                -ms-flex: 0 0 83.333333%;
                flex: 0 0 83.333333%;
                max-width: 83.333333%;
            }
            .col-lg-11 {
                -ms-flex: 0 0 91.666667%;
                flex: 0 0 91.666667%;
                max-width: 91.666667%;
            }
            .col-lg-12 {
                -ms-flex: 0 0 100%;
                flex: 0 0 100%;
                max-width: 100%;
            }
            .order-lg-first {
                -ms-flex-order: -1;
                order: -1;
            }
            .order-lg-last {
                -ms-flex-order: 13;
                order: 13;
            }
            .order-lg-0 {
                -ms-flex-order: 0;
                order: 0;
            }
            .order-lg-1 {
                -ms-flex-order: 1;
                order: 1;
            }
            .order-lg-2 {
                -ms-flex-order: 2;
                order: 2;
            }
            .order-lg-3 {
                -ms-flex-order: 3;
                order: 3;
            }
            .order-lg-4 {
                -ms-flex-order: 4;
                order: 4;
            }
            .order-lg-5 {
                -ms-flex-order: 5;
                order: 5;
            }
            .order-lg-6 {
                -ms-flex-order: 6;
                order: 6;
            }
            .order-lg-7 {
                -ms-flex-order: 7;
                order: 7;
            }
            .order-lg-8 {
                -ms-flex-order: 8;
                order: 8;
            }
            .order-lg-9 {
                -ms-flex-order: 9;
                order: 9;
            }
            .order-lg-10 {
                -ms-flex-order: 10;
                order: 10;
            }
            .order-lg-11 {
                -ms-flex-order: 11;
                order: 11;
            }
            .order-lg-12 {
                -ms-flex-order: 12;
                order: 12;
            }
            .offset-lg-0 {
                margin-left: 0;
            }
            .offset-lg-1 {
                margin-left: 8.333333%;
            }
            .offset-lg-2 {
                margin-left: 16.666667%;
            }
            .offset-lg-3 {
                margin-left: 25%;
            }
            .offset-lg-4 {
                margin-left: 33.333333%;
            }
            .offset-lg-5 {
                margin-left: 41.666667%;
            }
            .offset-lg-6 {
                margin-left: 50%;
            }
            .offset-lg-7 {
                margin-left: 58.333333%;
            }
            .offset-lg-8 {
                margin-left: 66.666667%;
            }
            .offset-lg-9 {
                margin-left: 75%;
            }
            .offset-lg-10 {
                margin-left: 83.333333%;
            }
            .offset-lg-11 {
                margin-left: 91.666667%;
            }
        }
        @media (min-width:1200px) {
            .col-xl {
                -ms-flex-preferred-size: 0;
                flex-basis: 0;
                -ms-flex-positive: 1;
                flex-grow: 1;
                max-width: 100%;
            }
            .row-cols-xl-1 > * {
                -ms-flex: 0 0 100%;
                flex: 0 0 100%;
                max-width: 100%;
            }
            .row-cols-xl-2 > * {
                -ms-flex: 0 0 50%;
                flex: 0 0 50%;
                max-width: 50%;
            }
            .row-cols-xl-3 > * {
                -ms-flex: 0 0 33.333333%;
                flex: 0 0 33.333333%;
                max-width: 33.333333%;
            }
            .row-cols-xl-4 > * {
                -ms-flex: 0 0 25%;
                flex: 0 0 25%;
                max-width: 25%;
            }
            .row-cols-xl-5 > * {
                -ms-flex: 0 0 20%;
                flex: 0 0 20%;
                max-width: 20%;
            }
            .row-cols-xl-6 > * {
                -ms-flex: 0 0 16.666667%;
                flex: 0 0 16.666667%;
                max-width: 16.666667%;
            }
            .col-xl-auto {
                -ms-flex: 0 0 auto;
                flex: 0 0 auto;
                width: auto;
                max-width: 100%;
            }
            .col-xl-1 {
                -ms-flex: 0 0 8.333333%;
                flex: 0 0 8.333333%;
                max-width: 8.333333%;
            }
            .col-xl-2 {
                -ms-flex: 0 0 16.666667%;
                flex: 0 0 16.666667%;
                max-width: 16.666667%;
            }
            .col-xl-3 {
                -ms-flex: 0 0 25%;
                flex: 0 0 25%;
                max-width: 25%;
            }
            .col-xl-4 {
                -ms-flex: 0 0 33.333333%;
                flex: 0 0 33.333333%;
                max-width: 33.333333%;
            }
            .col-xl-5 {
                -ms-flex: 0 0 41.666667%;
                flex: 0 0 41.666667%;
                max-width: 41.666667%;
            }
            .col-xl-6 {
                -ms-flex: 0 0 50%;
                flex: 0 0 50%;
                max-width: 50%;
            }
            .col-xl-7 {
                -ms-flex: 0 0 58.333333%;
                flex: 0 0 58.333333%;
                max-width: 58.333333%;
            }
            .col-xl-8 {
                -ms-flex: 0 0 66.666667%;
                flex: 0 0 66.666667%;
                max-width: 66.666667%;
            }
            .col-xl-9 {
                -ms-flex: 0 0 75%;
                flex: 0 0 75%;
                max-width: 75%;
            }
            .col-xl-10 {
                -ms-flex: 0 0 83.333333%;
                flex: 0 0 83.333333%;
                max-width: 83.333333%;
            }
            .col-xl-11 {
                -ms-flex: 0 0 91.666667%;
                flex: 0 0 91.666667%;
                max-width: 91.666667%;
            }
            .col-xl-12 {
                -ms-flex: 0 0 100%;
                flex: 0 0 100%;
                max-width: 100%;
            }
            .order-xl-first {
                -ms-flex-order: -1;
                order: -1;
            }
            .order-xl-last {
                -ms-flex-order: 13;
                order: 13;
            }
            .order-xl-0 {
                -ms-flex-order: 0;
                order: 0;
            }
            .order-xl-1 {
                -ms-flex-order: 1;
                order: 1;
            }
            .order-xl-2 {
                -ms-flex-order: 2;
                order: 2;
            }
            .order-xl-3 {
                -ms-flex-order: 3;
                order: 3;
            }
            .order-xl-4 {
                -ms-flex-order: 4;
                order: 4;
            }
            .order-xl-5 {
                -ms-flex-order: 5;
                order: 5;
            }
            .order-xl-6 {
                -ms-flex-order: 6;
                order: 6;
            }
            .order-xl-7 {
                -ms-flex-order: 7;
                order: 7;
            }
            .order-xl-8 {
                -ms-flex-order: 8;
                order: 8;
            }
            .order-xl-9 {
                -ms-flex-order: 9;
                order: 9;
            }
            .order-xl-10 {
                -ms-flex-order: 10;
                order: 10;
            }
            .order-xl-11 {
                -ms-flex-order: 11;
                order: 11;
            }
            .order-xl-12 {
                -ms-flex-order: 12;
                order: 12;
            }
            .offset-xl-0 {
                margin-left: 0;
            }
            .offset-xl-1 {
                margin-left: 8.333333%;
            }
            .offset-xl-2 {
                margin-left: 16.666667%;
            }
            .offset-xl-3 {
                margin-left: 25%;
            }
            .offset-xl-4 {
                margin-left: 33.333333%;
            }
            .offset-xl-5 {
                margin-left: 41.666667%;
            }
            .offset-xl-6 {
                margin-left: 50%;
            }
            .offset-xl-7 {
                margin-left: 58.333333%;
            }
            .offset-xl-8 {
                margin-left: 66.666667%;
            }
            .offset-xl-9 {
                margin-left: 75%;
            }
            .offset-xl-10 {
                margin-left: 83.333333%;
            }
            .offset-xl-11 {
                margin-left: 91.666667%;
            }
        }
        .table {
            width: 100%;
            margin-bottom: 1rem;
            color: #212529;
        }
            .table td, .table th {
                padding: .75rem;
                vertical-align: top;
                border-top: 1px solid #dee2e6;
            }
            .table thead th {
                vertical-align: bottom;
                border-bottom: 2px solid #dee2e6;
            }
            .table tbody + tbody {
                border-top: 2px solid #dee2e6;
            }
        .table-sm td, .table-sm th {
            padding: .3rem;
        }
        .col-form-label {
            padding-top: calc(.375rem + 1px);
            padding-bottom: calc(.375rem + 1px);
            margin-bottom: 0;
            font-size: inherit;
            line-height: 1.5;
        }
        .col-form-label-lg {
            padding-top: calc(.5rem + 1px);
            padding-bottom: calc(.5rem + 1px);
            font-size: 1.25rem;
            line-height: 1.5;
        }
        .col-form-label-sm {
            padding-top: calc(.25rem + 1px);
            padding-bottom: calc(.25rem + 1px);
            font-size: .875rem;
            line-height: 1.5;
        }
        .form-control-plaintext {
            display: block;
            width: 100%;
            padding: .375rem 0;
            margin-bottom: 0;
            font-size: 1rem;
            line-height: 1.5;
            color: #212529;
            background-color: transparent;
            border: solid transparent;
            border-width: 1px 0;
        }
            .form-control-plaintext.form-control-lg, .form-control-plaintext.form-control-sm {
                padding-right: 0;
                padding-left: 0;
            }
        .form-control-sm {
            height: calc(1.5em + .5rem + 2px);
            padding: .25rem .5rem;
            font-size: .875rem;
            line-height: 1.5;
            border-radius: .2rem;
        }
        .form-control-lg {
            height: calc(1.5em + 1rem + 2px);
            padding: .5rem 1rem;
            font-size: 1.25rem;
            line-height: 1.5;
            border-radius: .3rem;
        }
        select.form-control[multiple], select.form-control[size] {
            height: auto;
        }
        textarea.form-control {
            height: auto;
        }
        .form-group {
            margin-bottom: 1rem;
        }
        .form-text {
            display: block;
            margin-top: .25rem;
        }
        .form-row {
            display: -ms-flexbox;
            display: flex;
            -ms-flex-wrap: wrap;
            flex-wrap: wrap;
            margin-right: -5px;
            margin-left: -5px;
        }
            .form-row > .col, .form-row > [class*=col-] {
                padding-right: 5px;
                padding-left: 5px;
            }
        .form-check {
            position: relative;
            display: block;
            padding-left: 1.25rem;
        }
        .form-check-input {
            position: absolute;
            margin-top: .3rem;
            margin-left: -1.25rem;
        }
            .form-check-input:disabled ~ .form-check-label, .form-check-input[disabled] ~ .form-check-label {
                color: #6c757d;
            }
        .form-check-label {
            margin-bottom: 0;
        }
        .form-check-inline {
            display: -ms-inline-flexbox;
            display: inline-flex;
            -ms-flex-align: center;
            align-items: center;
            padding-left: 0;
            margin-right: .75rem;
        }
            .form-check-inline .form-check-input {
                position: static;
                margin-top: 0;
                margin-right: .3125rem;
                margin-left: 0;
            }
        .valid-feedback {
            display: none;
            width: 100%;
            margin-top: .25rem;
            font-size: 80%;
            color: #28a745;
        }
        .valid-tooltip {
            position: absolute;
            top: 100%;
            z-index: 5;
            display: none;
            max-width: 100%;
            padding: .25rem .5rem;
            margin-top: .1rem;
            font-size: .875rem;
            line-height: 1.5;
            color: #fff;
            background-color: rgba(40,167,69,.9);
            border-radius: .25rem;
        }
        .align-items-start {
            -ms-flex-align: start !important;
            align-items: flex-start !important;
        }
        .align-items-end {
            -ms-flex-align: end !important;
            align-items: flex-end !important;
        }
        .align-items-center {
            -ms-flex-align: center !important;
            align-items: center !important;
        }
        .align-items-baseline {
            -ms-flex-align: baseline !important;
            align-items: baseline !important;
        }
        .align-items-stretch {
            -ms-flex-align: stretch !important;
            align-items: stretch !important;
        }
        .align-content-start {
            -ms-flex-line-pack: start !important;
            align-content: flex-start !important;
        }
        .align-content-end {
            -ms-flex-line-pack: end !important;
            align-content: flex-end !important;
        }
        .align-content-center {
            -ms-flex-line-pack: center !important;
            align-content: center !important;
        }
        .align-content-between {
            -ms-flex-line-pack: justify !important;
            align-content: space-between !important;
        }
        .align-content-around {
            -ms-flex-line-pack: distribute !important;
            align-content: space-around !important;
        }
        .align-content-stretch {
            -ms-flex-line-pack: stretch !important;
            align-content: stretch !important;
        }
        .align-self-auto {
            -ms-flex-item-align: auto !important;
            align-self: auto !important;
        }
        .align-self-start {
            -ms-flex-item-align: start !important;
            align-self: flex-start !important;
        }
        .align-self-end {
            -ms-flex-item-align: end !important;
            align-self: flex-end !important;
        }
        .align-self-center {
            -ms-flex-item-align: center !important;
            align-self: center !important;
        }
        .align-self-baseline {
            -ms-flex-item-align: baseline !important;
            align-self: baseline !important;
        }
        .align-self-stretch {
            -ms-flex-item-align: stretch !important;
            align-self: stretch !important;
        }
        @media (min-width:576px) {
            .flex-sm-row {
                -ms-flex-direction: row !important;
                flex-direction: row !important;
            }
            .flex-sm-column {
                -ms-flex-direction: column !important;
                flex-direction: column !important;
            }
            .flex-sm-row-reverse {
                -ms-flex-direction: row-reverse !important;
                flex-direction: row-reverse !important;
            }
            .flex-sm-column-reverse {
                -ms-flex-direction: column-reverse !important;
                flex-direction: column-reverse !important;
            }
            .flex-sm-wrap {
                -ms-flex-wrap: wrap !important;
                flex-wrap: wrap !important;
            }
            .flex-sm-nowrap {
                -ms-flex-wrap: nowrap !important;
                flex-wrap: nowrap !important;
            }
            .flex-sm-wrap-reverse {
                -ms-flex-wrap: wrap-reverse !important;
                flex-wrap: wrap-reverse !important;
            }
            .flex-sm-fill {
                -ms-flex: 1 1 auto !important;
                flex: 1 1 auto !important;
            }
            .flex-sm-grow-0 {
                -ms-flex-positive: 0 !important;
                flex-grow: 0 !important;
            }
            .flex-sm-grow-1 {
                -ms-flex-positive: 1 !important;
                flex-grow: 1 !important;
            }
            .flex-sm-shrink-0 {
                -ms-flex-negative: 0 !important;
                flex-shrink: 0 !important;
            }
            .flex-sm-shrink-1 {
                -ms-flex-negative: 1 !important;
                flex-shrink: 1 !important;
            }
            .justify-content-sm-start {
                -ms-flex-pack: start !important;
                justify-content: flex-start !important;
            }
            .justify-content-sm-end {
                -ms-flex-pack: end !important;
                justify-content: flex-end !important;
            }
            .justify-content-sm-center {
                -ms-flex-pack: center !important;
                justify-content: center !important;
            }
            .justify-content-sm-between {
                -ms-flex-pack: justify !important;
                justify-content: space-between !important;
            }
            .justify-content-sm-around {
                -ms-flex-pack: distribute !important;
                justify-content: space-around !important;
            }
            .align-items-sm-start {
                -ms-flex-align: start !important;
                align-items: flex-start !important;
            }
            .align-items-sm-end {
                -ms-flex-align: end !important;
                align-items: flex-end !important;
            }
            .align-items-sm-center {
                -ms-flex-align: center !important;
                align-items: center !important;
            }
            .align-items-sm-baseline {
                -ms-flex-align: baseline !important;
                align-items: baseline !important;
            }
            .align-items-sm-stretch {
                -ms-flex-align: stretch !important;
                align-items: stretch !important;
            }
            .align-content-sm-start {
                -ms-flex-line-pack: start !important;
                align-content: flex-start !important;
            }
            .align-content-sm-end {
                -ms-flex-line-pack: end !important;
                align-content: flex-end !important;
            }
            .align-content-sm-center {
                -ms-flex-line-pack: center !important;
                align-content: center !important;
            }
            .align-content-sm-between {
                -ms-flex-line-pack: justify !important;
                align-content: space-between !important;
            }
            .align-content-sm-around {
                -ms-flex-line-pack: distribute !important;
                align-content: space-around !important;
            }
            .align-content-sm-stretch {
                -ms-flex-line-pack: stretch !important;
                align-content: stretch !important;
            }
            .align-self-sm-auto {
                -ms-flex-item-align: auto !important;
                align-self: auto !important;
            }
            .align-self-sm-start {
                -ms-flex-item-align: start !important;
                align-self: flex-start !important;
            }
            .align-self-sm-end {
                -ms-flex-item-align: end !important;
                align-self: flex-end !important;
            }
            .align-self-sm-center {
                -ms-flex-item-align: center !important;
                align-self: center !important;
            }
            .align-self-sm-baseline {
                -ms-flex-item-align: baseline !important;
                align-self: baseline !important;
            }
            .align-self-sm-stretch {
                -ms-flex-item-align: stretch !important;
                align-self: stretch !important;
            }
        }
        @media (min-width:768px) {
            .flex-md-row {
                -ms-flex-direction: row !important;
                flex-direction: row !important;
            }
            .flex-md-column {
                -ms-flex-direction: column !important;
                flex-direction: column !important;
            }
            .flex-md-row-reverse {
                -ms-flex-direction: row-reverse !important;
                flex-direction: row-reverse !important;
            }
            .flex-md-column-reverse {
                -ms-flex-direction: column-reverse !important;
                flex-direction: column-reverse !important;
            }
            .flex-md-wrap {
                -ms-flex-wrap: wrap !important;
                flex-wrap: wrap !important;
            }
            .flex-md-nowrap {
                -ms-flex-wrap: nowrap !important;
                flex-wrap: nowrap !important;
            }
            .flex-md-wrap-reverse {
                -ms-flex-wrap: wrap-reverse !important;
                flex-wrap: wrap-reverse !important;
            }
            .flex-md-fill {
                -ms-flex: 1 1 auto !important;
                flex: 1 1 auto !important;
            }
            .flex-md-grow-0 {
                -ms-flex-positive: 0 !important;
                flex-grow: 0 !important;
            }
            .flex-md-grow-1 {
                -ms-flex-positive: 1 !important;
                flex-grow: 1 !important;
            }
            .flex-md-shrink-0 {
                -ms-flex-negative: 0 !important;
                flex-shrink: 0 !important;
            }
            .flex-md-shrink-1 {
                -ms-flex-negative: 1 !important;
                flex-shrink: 1 !important;
            }
            .justify-content-md-start {
                -ms-flex-pack: start !important;
                justify-content: flex-start !important;
            }
            .justify-content-md-end {
                -ms-flex-pack: end !important;
                justify-content: flex-end !important;
            }
            .justify-content-md-center {
                -ms-flex-pack: center !important;
                justify-content: center !important;
            }
            .justify-content-md-between {
                -ms-flex-pack: justify !important;
                justify-content: space-between !important;
            }
            .justify-content-md-around {
                -ms-flex-pack: distribute !important;
                justify-content: space-around !important;
            }
            .align-items-md-start {
                -ms-flex-align: start !important;
                align-items: flex-start !important;
            }
            .align-items-md-end {
                -ms-flex-align: end !important;
                align-items: flex-end !important;
            }
            .align-items-md-center {
                -ms-flex-align: center !important;
                align-items: center !important;
            }
            .align-items-md-baseline {
                -ms-flex-align: baseline !important;
                align-items: baseline !important;
            }
            .align-items-md-stretch {
                -ms-flex-align: stretch !important;
                align-items: stretch !important;
            }
            .align-content-md-start {
                -ms-flex-line-pack: start !important;
                align-content: flex-start !important;
            }
            .align-content-md-end {
                -ms-flex-line-pack: end !important;
                align-content: flex-end !important;
            }
            .align-content-md-center {
                -ms-flex-line-pack: center !important;
                align-content: center !important;
            }
            .align-content-md-between {
                -ms-flex-line-pack: justify !important;
                align-content: space-between !important;
            }
            .align-content-md-around {
                -ms-flex-line-pack: distribute !important;
                align-content: space-around !important;
            }
            .align-content-md-stretch {
                -ms-flex-line-pack: stretch !important;
                align-content: stretch !important;
            }
            .align-self-md-auto {
                -ms-flex-item-align: auto !important;
                align-self: auto !important;
            }
            .align-self-md-start {
                -ms-flex-item-align: start !important;
                align-self: flex-start !important;
            }
            .align-self-md-end {
                -ms-flex-item-align: end !important;
                align-self: flex-end !important;
            }
            .align-self-md-center {
                -ms-flex-item-align: center !important;
                align-self: center !important;
            }
            .align-self-md-baseline {
                -ms-flex-item-align: baseline !important;
                align-self: baseline !important;
            }
            .align-self-md-stretch {
                -ms-flex-item-align: stretch !important;
                align-self: stretch !important;
            }
        }
        @media (min-width:992px) {
            .flex-lg-row {
                -ms-flex-direction: row !important;
                flex-direction: row !important;
            }
            .flex-lg-column {
                -ms-flex-direction: column !important;
                flex-direction: column !important;
            }
            .flex-lg-row-reverse {
                -ms-flex-direction: row-reverse !important;
                flex-direction: row-reverse !important;
            }
            .flex-lg-column-reverse {
                -ms-flex-direction: column-reverse !important;
                flex-direction: column-reverse !important;
            }
            .flex-lg-wrap {
                -ms-flex-wrap: wrap !important;
                flex-wrap: wrap !important;
            }
            .flex-lg-nowrap {
                -ms-flex-wrap: nowrap !important;
                flex-wrap: nowrap !important;
            }
            .flex-lg-wrap-reverse {
                -ms-flex-wrap: wrap-reverse !important;
                flex-wrap: wrap-reverse !important;
            }
            .flex-lg-fill {
                -ms-flex: 1 1 auto !important;
                flex: 1 1 auto !important;
            }
            .flex-lg-grow-0 {
                -ms-flex-positive: 0 !important;
                flex-grow: 0 !important;
            }
            .flex-lg-grow-1 {
                -ms-flex-positive: 1 !important;
                flex-grow: 1 !important;
            }
            .flex-lg-shrink-0 {
                -ms-flex-negative: 0 !important;
                flex-shrink: 0 !important;
            }
            .flex-lg-shrink-1 {
                -ms-flex-negative: 1 !important;
                flex-shrink: 1 !important;
            }
            .justify-content-lg-start {
                -ms-flex-pack: start !important;
                justify-content: flex-start !important;
            }
            .justify-content-lg-end {
                -ms-flex-pack: end !important;
                justify-content: flex-end !important;
            }
            .justify-content-lg-center {
                -ms-flex-pack: center !important;
                justify-content: center !important;
            }
            .justify-content-lg-between {
                -ms-flex-pack: justify !important;
                justify-content: space-between !important;
            }
            .justify-content-lg-around {
                -ms-flex-pack: distribute !important;
                justify-content: space-around !important;
            }
            .align-items-lg-start {
                -ms-flex-align: start !important;
                align-items: flex-start !important;
            }
            .align-items-lg-end {
                -ms-flex-align: end !important;
                align-items: flex-end !important;
            }
            .align-items-lg-center {
                -ms-flex-align: center !important;
                align-items: center !important;
            }
            .align-items-lg-baseline {
                -ms-flex-align: baseline !important;
                align-items: baseline !important;
            }
            .align-items-lg-stretch {
                -ms-flex-align: stretch !important;
                align-items: stretch !important;
            }
            .align-content-lg-start {
                -ms-flex-line-pack: start !important;
                align-content: flex-start !important;
            }
            .align-content-lg-end {
                -ms-flex-line-pack: end !important;
                align-content: flex-end !important;
            }
            .align-content-lg-center {
                -ms-flex-line-pack: center !important;
                align-content: center !important;
            }
            .align-content-lg-between {
                -ms-flex-line-pack: justify !important;
                align-content: space-between !important;
            }
            .align-content-lg-around {
                -ms-flex-line-pack: distribute !important;
                align-content: space-around !important;
            }
            .align-content-lg-stretch {
                -ms-flex-line-pack: stretch !important;
                align-content: stretch !important;
            }
            .align-self-lg-auto {
                -ms-flex-item-align: auto !important;
                align-self: auto !important;
            }
            .align-self-lg-start {
                -ms-flex-item-align: start !important;
                align-self: flex-start !important;
            }
            .align-self-lg-end {
                -ms-flex-item-align: end !important;
                align-self: flex-end !important;
            }
            .align-self-lg-center {
                -ms-flex-item-align: center !important;
                align-self: center !important;
            }
            .align-self-lg-baseline {
                -ms-flex-item-align: baseline !important;
                align-self: baseline !important;
            }
            .align-self-lg-stretch {
                -ms-flex-item-align: stretch !important;
                align-self: stretch !important;
            }
        }
        @media (min-width:1200px) {
            .flex-xl-row {
                -ms-flex-direction: row !important;
                flex-direction: row !important;
            }
            .flex-xl-column {
                -ms-flex-direction: column !important;
                flex-direction: column !important;
            }
            .flex-xl-row-reverse {
                -ms-flex-direction: row-reverse !important;
                flex-direction: row-reverse !important;
            }
            .flex-xl-column-reverse {
                -ms-flex-direction: column-reverse !important;
                flex-direction: column-reverse !important;
            }
            .flex-xl-wrap {
                -ms-flex-wrap: wrap !important;
                flex-wrap: wrap !important;
            }
            .flex-xl-nowrap {
                -ms-flex-wrap: nowrap !important;
                flex-wrap: nowrap !important;
            }
            .flex-xl-wrap-reverse {
                -ms-flex-wrap: wrap-reverse !important;
                flex-wrap: wrap-reverse !important;
            }
            .flex-xl-fill {
                -ms-flex: 1 1 auto !important;
                flex: 1 1 auto !important;
            }
            .flex-xl-grow-0 {
                -ms-flex-positive: 0 !important;
                flex-grow: 0 !important;
            }
            .flex-xl-grow-1 {
                -ms-flex-positive: 1 !important;
                flex-grow: 1 !important;
            }
            .flex-xl-shrink-0 {
                -ms-flex-negative: 0 !important;
                flex-shrink: 0 !important;
            }
            .flex-xl-shrink-1 {
                -ms-flex-negative: 1 !important;
                flex-shrink: 1 !important;
            }
            .justify-content-xl-start {
                -ms-flex-pack: start !important;
                justify-content: flex-start !important;
            }
            .justify-content-xl-end {
                -ms-flex-pack: end !important;
                justify-content: flex-end !important;
            }
            .justify-content-xl-center {
                -ms-flex-pack: center !important;
                justify-content: center !important;
            }
            .justify-content-xl-between {
                -ms-flex-pack: justify !important;
                justify-content: space-between !important;
            }
            .justify-content-xl-around {
                -ms-flex-pack: distribute !important;
                justify-content: space-around !important;
            }
            .align-items-xl-start {
                -ms-flex-align: start !important;
                align-items: flex-start !important;
            }
            .align-items-xl-end {
                -ms-flex-align: end !important;
                align-items: flex-end !important;
            }
            .align-items-xl-center {
                -ms-flex-align: center !important;
                align-items: center !important;
            }
            .align-items-xl-baseline {
                -ms-flex-align: baseline !important;
                align-items: baseline !important;
            }
            .align-items-xl-stretch {
                -ms-flex-align: stretch !important;
                align-items: stretch !important;
            }
            .align-content-xl-start {
                -ms-flex-line-pack: start !important;
                align-content: flex-start !important;
            }
            .align-content-xl-end {
                -ms-flex-line-pack: end !important;
                align-content: flex-end !important;
            }
            .align-content-xl-center {
                -ms-flex-line-pack: center !important;
                align-content: center !important;
            }
            .align-content-xl-between {
                -ms-flex-line-pack: justify !important;
                align-content: space-between !important;
            }
            .align-content-xl-around {
                -ms-flex-line-pack: distribute !important;
                align-content: space-around !important;
            }
            .align-content-xl-stretch {
                -ms-flex-line-pack: stretch !important;
                align-content: stretch !important;
            }
            .align-self-xl-auto {
                -ms-flex-item-align: auto !important;
                align-self: auto !important;
            }
            .align-self-xl-start {
                -ms-flex-item-align: start !important;
                align-self: flex-start !important;
            }
            .align-self-xl-end {
                -ms-flex-item-align: end !important;
                align-self: flex-end !important;
            }
            .align-self-xl-center {
                -ms-flex-item-align: center !important;
                align-self: center !important;
            }
            .align-self-xl-baseline {
                -ms-flex-item-align: baseline !important;
                align-self: baseline !important;
            }
            .align-self-xl-stretch {
                -ms-flex-item-align: stretch !important;
                align-self: stretch !important;
            }
        }
        .float-left {
            float: left !important;
        }
        .float-right {
            float: right !important;
        }
        .float-none {
            float: none !important;
        }
        @media (min-width:576px) {
            .float-sm-left {
                float: left !important;
            }
            .float-sm-right {
                float: right !important;
            }
            .float-sm-none {
                float: none !important;
            }
        }
        @media (min-width:768px) {
            .float-md-left {
                float: left !important;
            }
            .float-md-right {
                float: right !important;
            }
            .float-md-none {
                float: none !important;
            }
        }
        @media (min-width:992px) {
            .float-lg-left {
                float: left !important;
            }
            .float-lg-right {
                float: right !important;
            }
            .float-lg-none {
                float: none !important;
            }
        }
        @media (min-width:1200px) {
            .float-xl-left {
                float: left !important;
            }
            .float-xl-right {
                float: right !important;
            }
            .float-xl-none {
                float: none !important;
            }
        }
        .overflow-auto {
            overflow: auto !important;
        }
        .overflow-hidden {
            overflow: hidden !important;
        }
        .position-static {
            position: static !important;
        }
        .position-relative {
            position: relative !important;
        }
        .position-absolute {
            position: absolute !important;
        }
        .position-fixed {
            position: fixed !important;
        }
        .position-sticky {
            position: -webkit-sticky !important;
            position: sticky !important;
        }
        .fixed-top {
            position: fixed;
            top: 0;
            right: 0;
            left: 0;
            z-index: 1030;
        }
        .fixed-bottom {
            position: fixed;
            right: 0;
            bottom: 0;
            left: 0;
            z-index: 1030;
        }
        @supports ((position:-webkit-sticky) or (position:sticky)) {
            .sticky-top {
                position: -webkit-sticky;
                position: sticky;
                top: 0;
                z-index: 1020;
            }
        }
        .sr-only {
            position: absolute;
            width: 1px;
            height: 1px;
            padding: 0;
            margin: -1px;
            overflow: hidden;
            clip: rect(0,0,0,0);
            white-space: nowrap;
            border: 0;
        }
        .sr-only-focusable:active, .sr-only-focusable:focus {
            position: static;
            width: auto;
            height: auto;
            overflow: visible;
            clip: auto;
            white-space: normal;
        }
        .shadow-sm {
            box-shadow: 0 .125rem .25rem rgba(0,0,0,.075) !important;
        }
        .shadow {
            box-shadow: 0 .5rem 1rem rgba(0,0,0,.15) !important;
        }
        .shadow-lg {
            box-shadow: 0 1rem 3rem rgba(0,0,0,.175) !important;
        }
        .shadow-none {
            box-shadow: none !important;
        }
        .w-25 {
            width: 25% !important;
        }
        .w-50 {
            width: 50% !important;
        }
        .w-75 {
            width: 75% !important;
        }
        .w-100 {
            width: 100% !important;
        }
        .w-auto {
            width: auto !important;
        }
        .h-25 {
            height: 25% !important;
        }
        .h-50 {
            height: 50% !important;
        }
        .h-75 {
            height: 75% !important;
        }
        .h-100 {
            height: 100% !important;
        }
        .h-auto {
            height: auto !important;
        }
        .mw-100 {
            max-width: 100% !important;
        }
        .mh-100 {
            max-height: 100% !important;
        }
        .min-vw-100 {
            min-width: 100vw !important;
        }
        .min-vh-100 {
            min-height: 100vh !important;
        }
        .vw-100 {
            width: 100vw !important;
        }
        .vh-100 {
            height: 100vh !important;
        }
        .stretched-link::after {
            position: absolute;
            top: 0;
            right: 0;
            bottom: 0;
            left: 0;
            z-index: 1;
            pointer-events: auto;
            content: "";
            background-color: rgba(0,0,0,0);
        }
        .m-0 {
            margin: 0 !important;
        }
        .mt-0, .my-0 {
            margin-top: 0 !important;
        }
        .mr-0, .mx-0 {
            margin-right: 0 !important;
        }
        .mb-0, .my-0 {
            margin-bottom: 0 !important;
        }
        .ml-0, .mx-0 {
            margin-left: 0 !important;
        }
        .m-1 {
            margin: .25rem !important;
        }
        .mt-1, .my-1 {
            margin-top: .25rem !important;
        }
        .mr-1, .mx-1 {
            margin-right: .25rem !important;
        }
        .mb-1, .my-1 {
            margin-bottom: .25rem !important;
        }
        .ml-1, .mx-1 {
            margin-left: .25rem !important;
        }
        .m-2 {
            margin: .5rem !important;
        }
        .mt-2, .my-2 {
            margin-top: .5rem !important;
        }
        .mr-2, .mx-2 {
            margin-right: .5rem !important;
        }
        .mb-2, .my-2 {
            margin-bottom: .5rem !important;
        }
        .ml-2, .mx-2 {
            margin-left: .5rem !important;
        }
        .m-3 {
            margin: 1rem !important;
        }
        .mt-3, .my-3 {
            margin-top: 1rem !important;
        }
        .mr-3, .mx-3 {
            margin-right: 1rem !important;
        }
        .mb-3, .my-3 {
            margin-bottom: 1rem !important;
        }
        .ml-3, .mx-3 {
            margin-left: 1rem !important;
        }
        .m-4 {
            margin: 1.5rem !important;
        }
        .mt-4, .my-4 {
            margin-top: 1.5rem !important;
        }
        .mr-4, .mx-4 {
            margin-right: 1.5rem !important;
        }
        .mb-4, .my-4 {
            margin-bottom: 1.5rem !important;
        }
        .ml-4, .mx-4 {
            margin-left: 1.5rem !important;
        }
        .m-5 {
            margin: 3rem !important;
        }
        .mt-5, .my-5 {
            margin-top: 3rem !important;
        }
        .mr-5, .mx-5 {
            margin-right: 3rem !important;
        }
        .mb-5, .my-5 {
            margin-bottom: 3rem !important;
        }
        .ml-5, .mx-5 {
            margin-left: 3rem !important;
        }
        .p-0 {
            padding: 0 !important;
        }
        .pt-0, .py-0 {
            padding-top: 0 !important;
        }
        .pr-0, .px-0 {
            padding-right: 0 !important;
        }
        .pb-0, .py-0 {
            padding-bottom: 0 !important;
        }
        .pl-0, .px-0 {
            padding-left: 0 !important;
        }
        .p-1 {
            padding: .25rem !important;
        }
        .pt-1, .py-1 {
            padding-top: .25rem !important;
        }
        .pr-1, .px-1 {
            padding-right: .25rem !important;
        }
        .pb-1, .py-1 {
            padding-bottom: .25rem !important;
        }
        .pl-1, .px-1 {
            padding-left: .25rem !important;
        }
        .p-2 {
            padding: .5rem !important;
        }
        .pt-2, .py-2 {
            padding-top: .5rem !important;
        }
        .pr-2, .px-2 {
            padding-right: .5rem !important;
        }
        .pb-2, .py-2 {
            padding-bottom: .5rem !important;
        }
        .pl-2, .px-2 {
            padding-left: .5rem !important;
        }
        .p-3 {
            padding: 1rem !important;
        }
        .pt-3, .py-3 {
            padding-top: 1rem !important;
        }
        .pr-3, .px-3 {
            padding-right: 1rem !important;
        }
        .pb-3, .py-3 {
            padding-bottom: 1rem !important;
        }
        .pl-3, .px-3 {
            padding-left: 1rem !important;
        }
        .p-4 {
            padding: 1.5rem !important;
        }
        .pt-4, .py-4 {
            padding-top: 1.5rem !important;
        }
        .pr-4, .px-4 {
            padding-right: 1.5rem !important;
        }
        .pb-4, .py-4 {
            padding-bottom: 1.5rem !important;
        }
        .pl-4, .px-4 {
            padding-left: 1.5rem !important;
        }
        .p-5 {
            padding: 3rem !important;
        }
        .pt-5, .py-5 {
            padding-top: 3rem !important;
        }
        .pr-5, .px-5 {
            padding-right: 3rem !important;
        }
        .pb-5, .py-5 {
            padding-bottom: 3rem !important;
        }
        .pl-5, .px-5 {
            padding-left: 3rem !important;
        }
        .m-n1 {
            margin: -.25rem !important;
        }
        .mt-n1, .my-n1 {
            margin-top: -.25rem !important;
        }
        .mr-n1, .mx-n1 {
            margin-right: -.25rem !important;
        }
        .mb-n1, .my-n1 {
            margin-bottom: -.25rem !important;
        }
        .ml-n1, .mx-n1 {
            margin-left: -.25rem !important;
        }
        .m-n2 {
            margin: -.5rem !important;
        }
        .mt-n2, .my-n2 {
            margin-top: -.5rem !important;
        }
        .mr-n2, .mx-n2 {
            margin-right: -.5rem !important;
        }
        .mb-n2, .my-n2 {
            margin-bottom: -.5rem !important;
        }
        .ml-n2, .mx-n2 {
            margin-left: -.5rem !important;
        }
        .m-n3 {
            margin: -1rem !important;
        }
        .mt-n3, .my-n3 {
            margin-top: -1rem !important;
        }
        .mr-n3, .mx-n3 {
            margin-right: -1rem !important;
        }
        .mb-n3, .my-n3 {
            margin-bottom: -1rem !important;
        }
        .ml-n3, .mx-n3 {
            margin-left: -1rem !important;
        }
        .m-n4 {
            margin: -1.5rem !important;
        }
        .mt-n4, .my-n4 {
            margin-top: -1.5rem !important;
        }
        .mr-n4, .mx-n4 {
            margin-right: -1.5rem !important;
        }
        .mb-n4, .my-n4 {
            margin-bottom: -1.5rem !important;
        }
        .ml-n4, .mx-n4 {
            margin-left: -1.5rem !important;
        }
        .m-n5 {
            margin: -3rem !important;
        }
        .mt-n5, .my-n5 {
            margin-top: -3rem !important;
        }
        .mr-n5, .mx-n5 {
            margin-right: -3rem !important;
        }
        .mb-n5, .my-n5 {
            margin-bottom: -3rem !important;
        }
        .ml-n5, .mx-n5 {
            margin-left: -3rem !important;
        }
        .m-auto {
            margin: auto !important;
        }
        .mt-auto, .my-auto {
            margin-top: auto !important;
        }
        .mr-auto, .mx-auto {
            margin-right: auto !important;
        }
        .mb-auto, .my-auto {
            margin-bottom: auto !important;
        }
        .ml-auto, .mx-auto {
            margin-left: auto !important;
        }
        @media (min-width:576px) {
            .m-sm-0 {
                margin: 0 !important;
            }
            .mt-sm-0, .my-sm-0 {
                margin-top: 0 !important;
            }
            .mr-sm-0, .mx-sm-0 {
                margin-right: 0 !important;
            }
            .mb-sm-0, .my-sm-0 {
                margin-bottom: 0 !important;
            }
            .ml-sm-0, .mx-sm-0 {
                margin-left: 0 !important;
            }
            .m-sm-1 {
                margin: .25rem !important;
            }
            .mt-sm-1, .my-sm-1 {
                margin-top: .25rem !important;
            }
            .mr-sm-1, .mx-sm-1 {
                margin-right: .25rem !important;
            }
            .mb-sm-1, .my-sm-1 {
                margin-bottom: .25rem !important;
            }
            .ml-sm-1, .mx-sm-1 {
                margin-left: .25rem !important;
            }
            .m-sm-2 {
                margin: .5rem !important;
            }
            .mt-sm-2, .my-sm-2 {
                margin-top: .5rem !important;
            }
            .mr-sm-2, .mx-sm-2 {
                margin-right: .5rem !important;
            }
            .mb-sm-2, .my-sm-2 {
                margin-bottom: .5rem !important;
            }
            .ml-sm-2, .mx-sm-2 {
                margin-left: .5rem !important;
            }
            .m-sm-3 {
                margin: 1rem !important;
            }
            .mt-sm-3, .my-sm-3 {
                margin-top: 1rem !important;
            }
            .mr-sm-3, .mx-sm-3 {
                margin-right: 1rem !important;
            }
            .mb-sm-3, .my-sm-3 {
                margin-bottom: 1rem !important;
            }
            .ml-sm-3, .mx-sm-3 {
                margin-left: 1rem !important;
            }
            .m-sm-4 {
                margin: 1.5rem !important;
            }
            .mt-sm-4, .my-sm-4 {
                margin-top: 1.5rem !important;
            }
            .mr-sm-4, .mx-sm-4 {
                margin-right: 1.5rem !important;
            }
            .mb-sm-4, .my-sm-4 {
                margin-bottom: 1.5rem !important;
            }
            .ml-sm-4, .mx-sm-4 {
                margin-left: 1.5rem !important;
            }
            .m-sm-5 {
                margin: 3rem !important;
            }
            .mt-sm-5, .my-sm-5 {
                margin-top: 3rem !important;
            }
            .mr-sm-5, .mx-sm-5 {
                margin-right: 3rem !important;
            }
            .mb-sm-5, .my-sm-5 {
                margin-bottom: 3rem !important;
            }
            .ml-sm-5, .mx-sm-5 {
                margin-left: 3rem !important;
            }
            .p-sm-0 {
                padding: 0 !important;
            }
            .pt-sm-0, .py-sm-0 {
                padding-top: 0 !important;
            }
            .pr-sm-0, .px-sm-0 {
                padding-right: 0 !important;
            }
            .pb-sm-0, .py-sm-0 {
                padding-bottom: 0 !important;
            }
            .pl-sm-0, .px-sm-0 {
                padding-left: 0 !important;
            }
            .p-sm-1 {
                padding: .25rem !important;
            }
            .pt-sm-1, .py-sm-1 {
                padding-top: .25rem !important;
            }
            .pr-sm-1, .px-sm-1 {
                padding-right: .25rem !important;
            }
            .pb-sm-1, .py-sm-1 {
                padding-bottom: .25rem !important;
            }
            .pl-sm-1, .px-sm-1 {
                padding-left: .25rem !important;
            }
            .p-sm-2 {
                padding: .5rem !important;
            }
            .pt-sm-2, .py-sm-2 {
                padding-top: .5rem !important;
            }
            .pr-sm-2, .px-sm-2 {
                padding-right: .5rem !important;
            }
            .pb-sm-2, .py-sm-2 {
                padding-bottom: .5rem !important;
            }
            .pl-sm-2, .px-sm-2 {
                padding-left: .5rem !important;
            }
            .p-sm-3 {
                padding: 1rem !important;
            }
            .pt-sm-3, .py-sm-3 {
                padding-top: 1rem !important;
            }
            .pr-sm-3, .px-sm-3 {
                padding-right: 1rem !important;
            }
            .pb-sm-3, .py-sm-3 {
                padding-bottom: 1rem !important;
            }
            .pl-sm-3, .px-sm-3 {
                padding-left: 1rem !important;
            }
            .p-sm-4 {
                padding: 1.5rem !important;
            }
            .pt-sm-4, .py-sm-4 {
                padding-top: 1.5rem !important;
            }
            .pr-sm-4, .px-sm-4 {
                padding-right: 1.5rem !important;
            }
            .pb-sm-4, .py-sm-4 {
                padding-bottom: 1.5rem !important;
            }
            .pl-sm-4, .px-sm-4 {
                padding-left: 1.5rem !important;
            }
            .p-sm-5 {
                padding: 3rem !important;
            }
            .pt-sm-5, .py-sm-5 {
                padding-top: 3rem !important;
            }
            .pr-sm-5, .px-sm-5 {
                padding-right: 3rem !important;
            }
            .pb-sm-5, .py-sm-5 {
                padding-bottom: 3rem !important;
            }
            .pl-sm-5, .px-sm-5 {
                padding-left: 3rem !important;
            }
            .m-sm-n1 {
                margin: -.25rem !important;
            }
            .mt-sm-n1, .my-sm-n1 {
                margin-top: -.25rem !important;
            }
            .mr-sm-n1, .mx-sm-n1 {
                margin-right: -.25rem !important;
            }
            .mb-sm-n1, .my-sm-n1 {
                margin-bottom: -.25rem !important;
            }
            .ml-sm-n1, .mx-sm-n1 {
                margin-left: -.25rem !important;
            }
            .m-sm-n2 {
                margin: -.5rem !important;
            }
            .mt-sm-n2, .my-sm-n2 {
                margin-top: -.5rem !important;
            }
            .mr-sm-n2, .mx-sm-n2 {
                margin-right: -.5rem !important;
            }
            .mb-sm-n2, .my-sm-n2 {
                margin-bottom: -.5rem !important;
            }
            .ml-sm-n2, .mx-sm-n2 {
                margin-left: -.5rem !important;
            }
            .m-sm-n3 {
                margin: -1rem !important;
            }
            .mt-sm-n3, .my-sm-n3 {
                margin-top: -1rem !important;
            }
            .mr-sm-n3, .mx-sm-n3 {
                margin-right: -1rem !important;
            }
            .mb-sm-n3, .my-sm-n3 {
                margin-bottom: -1rem !important;
            }
            .ml-sm-n3, .mx-sm-n3 {
                margin-left: -1rem !important;
            }
            .m-sm-n4 {
                margin: -1.5rem !important;
            }
            .mt-sm-n4, .my-sm-n4 {
                margin-top: -1.5rem !important;
            }
            .mr-sm-n4, .mx-sm-n4 {
                margin-right: -1.5rem !important;
            }
            .mb-sm-n4, .my-sm-n4 {
                margin-bottom: -1.5rem !important;
            }
            .ml-sm-n4, .mx-sm-n4 {
                margin-left: -1.5rem !important;
            }
            .m-sm-n5 {
                margin: -3rem !important;
            }
            .mt-sm-n5, .my-sm-n5 {
                margin-top: -3rem !important;
            }
            .mr-sm-n5, .mx-sm-n5 {
                margin-right: -3rem !important;
            }
            .mb-sm-n5, .my-sm-n5 {
                margin-bottom: -3rem !important;
            }
            .ml-sm-n5, .mx-sm-n5 {
                margin-left: -3rem !important;
            }
            .m-sm-auto {
                margin: auto !important;
            }
            .mt-sm-auto, .my-sm-auto {
                margin-top: auto !important;
            }
            .mr-sm-auto, .mx-sm-auto {
                margin-right: auto !important;
            }
            .mb-sm-auto, .my-sm-auto {
                margin-bottom: auto !important;
            }
            .ml-sm-auto, .mx-sm-auto {
                margin-left: auto !important;
            }
        }
        @media (min-width:768px) {
            .m-md-0 {
                margin: 0 !important;
            }
            .mt-md-0, .my-md-0 {
                margin-top: 0 !important;
            }
            .mr-md-0, .mx-md-0 {
                margin-right: 0 !important;
            }
            .mb-md-0, .my-md-0 {
                margin-bottom: 0 !important;
            }
            .ml-md-0, .mx-md-0 {
                margin-left: 0 !important;
            }
            .m-md-1 {
                margin: .25rem !important;
            }
            .mt-md-1, .my-md-1 {
                margin-top: .25rem !important;
            }
            .mr-md-1, .mx-md-1 {
                margin-right: .25rem !important;
            }
            .mb-md-1, .my-md-1 {
                margin-bottom: .25rem !important;
            }
            .ml-md-1, .mx-md-1 {
                margin-left: .25rem !important;
            }
            .m-md-2 {
                margin: .5rem !important;
            }
            .mt-md-2, .my-md-2 {
                margin-top: .5rem !important;
            }
            .mr-md-2, .mx-md-2 {
                margin-right: .5rem !important;
            }
            .mb-md-2, .my-md-2 {
                margin-bottom: .5rem !important;
            }
            .ml-md-2, .mx-md-2 {
                margin-left: .5rem !important;
            }
            .m-md-3 {
                margin: 1rem !important;
            }
            .mt-md-3, .my-md-3 {
                margin-top: 1rem !important;
            }
            .mr-md-3, .mx-md-3 {
                margin-right: 1rem !important;
            }
            .mb-md-3, .my-md-3 {
                margin-bottom: 1rem !important;
            }
            .ml-md-3, .mx-md-3 {
                margin-left: 1rem !important;
            }
            .m-md-4 {
                margin: 1.5rem !important;
            }
            .mt-md-4, .my-md-4 {
                margin-top: 1.5rem !important;
            }
            .mr-md-4, .mx-md-4 {
                margin-right: 1.5rem !important;
            }
            .mb-md-4, .my-md-4 {
                margin-bottom: 1.5rem !important;
            }
            .ml-md-4, .mx-md-4 {
                margin-left: 1.5rem !important;
            }
            .m-md-5 {
                margin: 3rem !important;
            }
            .mt-md-5, .my-md-5 {
                margin-top: 3rem !important;
            }
            .mr-md-5, .mx-md-5 {
                margin-right: 3rem !important;
            }
            .mb-md-5, .my-md-5 {
                margin-bottom: 3rem !important;
            }
            .ml-md-5, .mx-md-5 {
                margin-left: 3rem !important;
            }
            .p-md-0 {
                padding: 0 !important;
            }
            .pt-md-0, .py-md-0 {
                padding-top: 0 !important;
            }
            .pr-md-0, .px-md-0 {
                padding-right: 0 !important;
            }
            .pb-md-0, .py-md-0 {
                padding-bottom: 0 !important;
            }
            .pl-md-0, .px-md-0 {
                padding-left: 0 !important;
            }
            .p-md-1 {
                padding: .25rem !important;
            }
            .pt-md-1, .py-md-1 {
                padding-top: .25rem !important;
            }
            .pr-md-1, .px-md-1 {
                padding-right: .25rem !important;
            }
            .pb-md-1, .py-md-1 {
                padding-bottom: .25rem !important;
            }
            .pl-md-1, .px-md-1 {
                padding-left: .25rem !important;
            }
            .p-md-2 {
                padding: .5rem !important;
            }
            .pt-md-2, .py-md-2 {
                padding-top: .5rem !important;
            }
            .pr-md-2, .px-md-2 {
                padding-right: .5rem !important;
            }
            .pb-md-2, .py-md-2 {
                padding-bottom: .5rem !important;
            }
            .pl-md-2, .px-md-2 {
                padding-left: .5rem !important;
            }
            .p-md-3 {
                padding: 1rem !important;
            }
            .pt-md-3, .py-md-3 {
                padding-top: 1rem !important;
            }
            .pr-md-3, .px-md-3 {
                padding-right: 1rem !important;
            }
            .pb-md-3, .py-md-3 {
                padding-bottom: 1rem !important;
            }
            .pl-md-3, .px-md-3 {
                padding-left: 1rem !important;
            }
            .p-md-4 {
                padding: 1.5rem !important;
            }
            .pt-md-4, .py-md-4 {
                padding-top: 1.5rem !important;
            }
            .pr-md-4, .px-md-4 {
                padding-right: 1.5rem !important;
            }
            .pb-md-4, .py-md-4 {
                padding-bottom: 1.5rem !important;
            }
            .pl-md-4, .px-md-4 {
                padding-left: 1.5rem !important;
            }
            .p-md-5 {
                padding: 3rem !important;
            }
            .pt-md-5, .py-md-5 {
                padding-top: 3rem !important;
            }
            .pr-md-5, .px-md-5 {
                padding-right: 3rem !important;
            }
            .pb-md-5, .py-md-5 {
                padding-bottom: 3rem !important;
            }
            .pl-md-5, .px-md-5 {
                padding-left: 3rem !important;
            }
            .m-md-n1 {
                margin: -.25rem !important;
            }
            .mt-md-n1, .my-md-n1 {
                margin-top: -.25rem !important;
            }
            .mr-md-n1, .mx-md-n1 {
                margin-right: -.25rem !important;
            }
            .mb-md-n1, .my-md-n1 {
                margin-bottom: -.25rem !important;
            }
            .ml-md-n1, .mx-md-n1 {
                margin-left: -.25rem !important;
            }
            .m-md-n2 {
                margin: -.5rem !important;
            }
            .mt-md-n2, .my-md-n2 {
                margin-top: -.5rem !important;
            }
            .mr-md-n2, .mx-md-n2 {
                margin-right: -.5rem !important;
            }
            .mb-md-n2, .my-md-n2 {
                margin-bottom: -.5rem !important;
            }
            .ml-md-n2, .mx-md-n2 {
                margin-left: -.5rem !important;
            }
            .m-md-n3 {
                margin: -1rem !important;
            }
            .mt-md-n3, .my-md-n3 {
                margin-top: -1rem !important;
            }
            .mr-md-n3, .mx-md-n3 {
                margin-right: -1rem !important;
            }
            .mb-md-n3, .my-md-n3 {
                margin-bottom: -1rem !important;
            }
            .ml-md-n3, .mx-md-n3 {
                margin-left: -1rem !important;
            }
            .m-md-n4 {
                margin: -1.5rem !important;
            }
            .mt-md-n4, .my-md-n4 {
                margin-top: -1.5rem !important;
            }
            .mr-md-n4, .mx-md-n4 {
                margin-right: -1.5rem !important;
            }
            .mb-md-n4, .my-md-n4 {
                margin-bottom: -1.5rem !important;
            }
            .ml-md-n4, .mx-md-n4 {
                margin-left: -1.5rem !important;
            }
            .m-md-n5 {
                margin: -3rem !important;
            }
            .mt-md-n5, .my-md-n5 {
                margin-top: -3rem !important;
            }
            .mr-md-n5, .mx-md-n5 {
                margin-right: -3rem !important;
            }
            .mb-md-n5, .my-md-n5 {
                margin-bottom: -3rem !important;
            }
            .ml-md-n5, .mx-md-n5 {
                margin-left: -3rem !important;
            }
            .m-md-auto {
                margin: auto !important;
            }
            .mt-md-auto, .my-md-auto {
                margin-top: auto !important;
            }
            .mr-md-auto, .mx-md-auto {
                margin-right: auto !important;
            }
            .mb-md-auto, .my-md-auto {
                margin-bottom: auto !important;
            }
            .ml-md-auto, .mx-md-auto {
                margin-left: auto !important;
            }
        }
        @media (min-width:992px) {
            .m-lg-0 {
                margin: 0 !important;
            }
            .mt-lg-0, .my-lg-0 {
                margin-top: 0 !important;
            }
            .mr-lg-0, .mx-lg-0 {
                margin-right: 0 !important;
            }
            .mb-lg-0, .my-lg-0 {
                margin-bottom: 0 !important;
            }
            .ml-lg-0, .mx-lg-0 {
                margin-left: 0 !important;
            }
            .m-lg-1 {
                margin: .25rem !important;
            }
            .mt-lg-1, .my-lg-1 {
                margin-top: .25rem !important;
            }
            .mr-lg-1, .mx-lg-1 {
                margin-right: .25rem !important;
            }
            .mb-lg-1, .my-lg-1 {
                margin-bottom: .25rem !important;
            }
            .ml-lg-1, .mx-lg-1 {
                margin-left: .25rem !important;
            }
            .m-lg-2 {
                margin: .5rem !important;
            }
            .mt-lg-2, .my-lg-2 {
                margin-top: .5rem !important;
            }
            .mr-lg-2, .mx-lg-2 {
                margin-right: .5rem !important;
            }
            .mb-lg-2, .my-lg-2 {
                margin-bottom: .5rem !important;
            }
            .ml-lg-2, .mx-lg-2 {
                margin-left: .5rem !important;
            }
            .m-lg-3 {
                margin: 1rem !important;
            }
            .mt-lg-3, .my-lg-3 {
                margin-top: 1rem !important;
            }
            .mr-lg-3, .mx-lg-3 {
                margin-right: 1rem !important;
            }
            .mb-lg-3, .my-lg-3 {
                margin-bottom: 1rem !important;
            }
            .ml-lg-3, .mx-lg-3 {
                margin-left: 1rem !important;
            }
            .m-lg-4 {
                margin: 1.5rem !important;
            }
            .mt-lg-4, .my-lg-4 {
                margin-top: 1.5rem !important;
            }
            .mr-lg-4, .mx-lg-4 {
                margin-right: 1.5rem !important;
            }
            .mb-lg-4, .my-lg-4 {
                margin-bottom: 1.5rem !important;
            }
            .ml-lg-4, .mx-lg-4 {
                margin-left: 1.5rem !important;
            }
            .m-lg-5 {
                margin: 3rem !important;
            }
            .mt-lg-5, .my-lg-5 {
                margin-top: 3rem !important;
            }
            .mr-lg-5, .mx-lg-5 {
                margin-right: 3rem !important;
            }
            .mb-lg-5, .my-lg-5 {
                margin-bottom: 3rem !important;
            }
            .ml-lg-5, .mx-lg-5 {
                margin-left: 3rem !important;
            }
            .p-lg-0 {
                padding: 0 !important;
            }
            .pt-lg-0, .py-lg-0 {
                padding-top: 0 !important;
            }
            .pr-lg-0, .px-lg-0 {
                padding-right: 0 !important;
            }
            .pb-lg-0, .py-lg-0 {
                padding-bottom: 0 !important;
            }
            .pl-lg-0, .px-lg-0 {
                padding-left: 0 !important;
            }
            .p-lg-1 {
                padding: .25rem !important;
            }
            .pt-lg-1, .py-lg-1 {
                padding-top: .25rem !important;
            }
            .pr-lg-1, .px-lg-1 {
                padding-right: .25rem !important;
            }
            .pb-lg-1, .py-lg-1 {
                padding-bottom: .25rem !important;
            }
            .pl-lg-1, .px-lg-1 {
                padding-left: .25rem !important;
            }
            .p-lg-2 {
                padding: .5rem !important;
            }
            .pt-lg-2, .py-lg-2 {
                padding-top: .5rem !important;
            }
            .pr-lg-2, .px-lg-2 {
                padding-right: .5rem !important;
            }
            .pb-lg-2, .py-lg-2 {
                padding-bottom: .5rem !important;
            }
            .pl-lg-2, .px-lg-2 {
                padding-left: .5rem !important;
            }
            .p-lg-3 {
                padding: 1rem !important;
            }
            .pt-lg-3, .py-lg-3 {
                padding-top: 1rem !important;
            }
            .pr-lg-3, .px-lg-3 {
                padding-right: 1rem !important;
            }
            .pb-lg-3, .py-lg-3 {
                padding-bottom: 1rem !important;
            }
            .pl-lg-3, .px-lg-3 {
                padding-left: 1rem !important;
            }
            .p-lg-4 {
                padding: 1.5rem !important;
            }
            .pt-lg-4, .py-lg-4 {
                padding-top: 1.5rem !important;
            }
            .pr-lg-4, .px-lg-4 {
                padding-right: 1.5rem !important;
            }
            .pb-lg-4, .py-lg-4 {
                padding-bottom: 1.5rem !important;
            }
            .pl-lg-4, .px-lg-4 {
                padding-left: 1.5rem !important;
            }
            .p-lg-5 {
                padding: 3rem !important;
            }
            .pt-lg-5, .py-lg-5 {
                padding-top: 3rem !important;
            }
            .pr-lg-5, .px-lg-5 {
                padding-right: 3rem !important;
            }
            .pb-lg-5, .py-lg-5 {
                padding-bottom: 3rem !important;
            }
            .pl-lg-5, .px-lg-5 {
                padding-left: 3rem !important;
            }
            .m-lg-n1 {
                margin: -.25rem !important;
            }
            .mt-lg-n1, .my-lg-n1 {
                margin-top: -.25rem !important;
            }
            .mr-lg-n1, .mx-lg-n1 {
                margin-right: -.25rem !important;
            }
            .mb-lg-n1, .my-lg-n1 {
                margin-bottom: -.25rem !important;
            }
            .ml-lg-n1, .mx-lg-n1 {
                margin-left: -.25rem !important;
            }
            .m-lg-n2 {
                margin: -.5rem !important;
            }
            .mt-lg-n2, .my-lg-n2 {
                margin-top: -.5rem !important;
            }
            .mr-lg-n2, .mx-lg-n2 {
                margin-right: -.5rem !important;
            }
            .mb-lg-n2, .my-lg-n2 {
                margin-bottom: -.5rem !important;
            }
            .ml-lg-n2, .mx-lg-n2 {
                margin-left: -.5rem !important;
            }
            .m-lg-n3 {
                margin: -1rem !important;
            }
            .mt-lg-n3, .my-lg-n3 {
                margin-top: -1rem !important;
            }
            .mr-lg-n3, .mx-lg-n3 {
                margin-right: -1rem !important;
            }
            .mb-lg-n3, .my-lg-n3 {
                margin-bottom: -1rem !important;
            }
            .ml-lg-n3, .mx-lg-n3 {
                margin-left: -1rem !important;
            }
            .m-lg-n4 {
                margin: -1.5rem !important;
            }
            .mt-lg-n4, .my-lg-n4 {
                margin-top: -1.5rem !important;
            }
            .mr-lg-n4, .mx-lg-n4 {
                margin-right: -1.5rem !important;
            }
            .mb-lg-n4, .my-lg-n4 {
                margin-bottom: -1.5rem !important;
            }
            .ml-lg-n4, .mx-lg-n4 {
                margin-left: -1.5rem !important;
            }
            .m-lg-n5 {
                margin: -3rem !important;
            }
            .mt-lg-n5, .my-lg-n5 {
                margin-top: -3rem !important;
            }
            .mr-lg-n5, .mx-lg-n5 {
                margin-right: -3rem !important;
            }
            .mb-lg-n5, .my-lg-n5 {
                margin-bottom: -3rem !important;
            }
            .ml-lg-n5, .mx-lg-n5 {
                margin-left: -3rem !important;
            }
            .m-lg-auto {
                margin: auto !important;
            }
            .mt-lg-auto, .my-lg-auto {
                margin-top: auto !important;
            }
            .mr-lg-auto, .mx-lg-auto {
                margin-right: auto !important;
            }
            .mb-lg-auto, .my-lg-auto {
                margin-bottom: auto !important;
            }
            .ml-lg-auto, .mx-lg-auto {
                margin-left: auto !important;
            }
        }
        @media (min-width:1200px) {
            .m-xl-0 {
                margin: 0 !important;
            }
            .mt-xl-0, .my-xl-0 {
                margin-top: 0 !important;
            }
            .mr-xl-0, .mx-xl-0 {
                margin-right: 0 !important;
            }
            .mb-xl-0, .my-xl-0 {
                margin-bottom: 0 !important;
            }
            .ml-xl-0, .mx-xl-0 {
                margin-left: 0 !important;
            }
            .m-xl-1 {
                margin: .25rem !important;
            }
            .mt-xl-1, .my-xl-1 {
                margin-top: .25rem !important;
            }
            .mr-xl-1, .mx-xl-1 {
                margin-right: .25rem !important;
            }
            .mb-xl-1, .my-xl-1 {
                margin-bottom: .25rem !important;
            }
            .ml-xl-1, .mx-xl-1 {
                margin-left: .25rem !important;
            }
            .m-xl-2 {
                margin: .5rem !important;
            }
            .mt-xl-2, .my-xl-2 {
                margin-top: .5rem !important;
            }
            .mr-xl-2, .mx-xl-2 {
                margin-right: .5rem !important;
            }
            .mb-xl-2, .my-xl-2 {
                margin-bottom: .5rem !important;
            }
            .ml-xl-2, .mx-xl-2 {
                margin-left: .5rem !important;
            }
            .m-xl-3 {
                margin: 1rem !important;
            }
            .mt-xl-3, .my-xl-3 {
                margin-top: 1rem !important;
            }
            .mr-xl-3, .mx-xl-3 {
                margin-right: 1rem !important;
            }
            .mb-xl-3, .my-xl-3 {
                margin-bottom: 1rem !important;
            }
            .ml-xl-3, .mx-xl-3 {
                margin-left: 1rem !important;
            }
            .m-xl-4 {
                margin: 1.5rem !important;
            }
            .mt-xl-4, .my-xl-4 {
                margin-top: 1.5rem !important;
            }
            .mr-xl-4, .mx-xl-4 {
                margin-right: 1.5rem !important;
            }
            .mb-xl-4, .my-xl-4 {
                margin-bottom: 1.5rem !important;
            }
            .ml-xl-4, .mx-xl-4 {
                margin-left: 1.5rem !important;
            }
            .m-xl-5 {
                margin: 3rem !important;
            }
            .mt-xl-5, .my-xl-5 {
                margin-top: 3rem !important;
            }
            .mr-xl-5, .mx-xl-5 {
                margin-right: 3rem !important;
            }
            .mb-xl-5, .my-xl-5 {
                margin-bottom: 3rem !important;
            }
            .ml-xl-5, .mx-xl-5 {
                margin-left: 3rem !important;
            }
            .p-xl-0 {
                padding: 0 !important;
            }
            .pt-xl-0, .py-xl-0 {
                padding-top: 0 !important;
            }
            .pr-xl-0, .px-xl-0 {
                padding-right: 0 !important;
            }
            .pb-xl-0, .py-xl-0 {
                padding-bottom: 0 !important;
            }
            .pl-xl-0, .px-xl-0 {
                padding-left: 0 !important;
            }
            .p-xl-1 {
                padding: .25rem !important;
            }
            .pt-xl-1, .py-xl-1 {
                padding-top: .25rem !important;
            }
            .pr-xl-1, .px-xl-1 {
                padding-right: .25rem !important;
            }
            .pb-xl-1, .py-xl-1 {
                padding-bottom: .25rem !important;
            }
            .pl-xl-1, .px-xl-1 {
                padding-left: .25rem !important;
            }
            .p-xl-2 {
                padding: .5rem !important;
            }
            .pt-xl-2, .py-xl-2 {
                padding-top: .5rem !important;
            }
            .pr-xl-2, .px-xl-2 {
                padding-right: .5rem !important;
            }
            .pb-xl-2, .py-xl-2 {
                padding-bottom: .5rem !important;
            }
            .pl-xl-2, .px-xl-2 {
                padding-left: .5rem !important;
            }
            .p-xl-3 {
                padding: 1rem !important;
            }
            .pt-xl-3, .py-xl-3 {
                padding-top: 1rem !important;
            }
            .pr-xl-3, .px-xl-3 {
                padding-right: 1rem !important;
            }
            .pb-xl-3, .py-xl-3 {
                padding-bottom: 1rem !important;
            }
            .pl-xl-3, .px-xl-3 {
                padding-left: 1rem !important;
            }
            .p-xl-4 {
                padding: 1.5rem !important;
            }
            .pt-xl-4, .py-xl-4 {
                padding-top: 1.5rem !important;
            }
            .pr-xl-4, .px-xl-4 {
                padding-right: 1.5rem !important;
            }
            .pb-xl-4, .py-xl-4 {
                padding-bottom: 1.5rem !important;
            }
            .pl-xl-4, .px-xl-4 {
                padding-left: 1.5rem !important;
            }
            .p-xl-5 {
                padding: 3rem !important;
            }
            .pt-xl-5, .py-xl-5 {
                padding-top: 3rem !important;
            }
            .pr-xl-5, .px-xl-5 {
                padding-right: 3rem !important;
            }
            .pb-xl-5, .py-xl-5 {
                padding-bottom: 3rem !important;
            }
            .pl-xl-5, .px-xl-5 {
                padding-left: 3rem !important;
            }
            .m-xl-n1 {
                margin: -.25rem !important;
            }
            .mt-xl-n1, .my-xl-n1 {
                margin-top: -.25rem !important;
            }
            .mr-xl-n1, .mx-xl-n1 {
                margin-right: -.25rem !important;
            }
            .mb-xl-n1, .my-xl-n1 {
                margin-bottom: -.25rem !important;
            }
            .ml-xl-n1, .mx-xl-n1 {
                margin-left: -.25rem !important;
            }
            .m-xl-n2 {
                margin: -.5rem !important;
            }
            .mt-xl-n2, .my-xl-n2 {
                margin-top: -.5rem !important;
            }
            .mr-xl-n2, .mx-xl-n2 {
                margin-right: -.5rem !important;
            }
            .mb-xl-n2, .my-xl-n2 {
                margin-bottom: -.5rem !important;
            }
            .ml-xl-n2, .mx-xl-n2 {
                margin-left: -.5rem !important;
            }
            .m-xl-n3 {
                margin: -1rem !important;
            }
            .mt-xl-n3, .my-xl-n3 {
                margin-top: -1rem !important;
            }
            .mr-xl-n3, .mx-xl-n3 {
                margin-right: -1rem !important;
            }
            .mb-xl-n3, .my-xl-n3 {
                margin-bottom: -1rem !important;
            }
            .ml-xl-n3, .mx-xl-n3 {
                margin-left: -1rem !important;
            }
            .m-xl-n4 {
                margin: -1.5rem !important;
            }
            .mt-xl-n4, .my-xl-n4 {
                margin-top: -1.5rem !important;
            }
            .mr-xl-n4, .mx-xl-n4 {
                margin-right: -1.5rem !important;
            }
            .mb-xl-n4, .my-xl-n4 {
                margin-bottom: -1.5rem !important;
            }
            .ml-xl-n4, .mx-xl-n4 {
                margin-left: -1.5rem !important;
            }
            .m-xl-n5 {
                margin: -3rem !important;
            }
            .mt-xl-n5, .my-xl-n5 {
                margin-top: -3rem !important;
            }
            .mr-xl-n5, .mx-xl-n5 {
                margin-right: -3rem !important;
            }
            .mb-xl-n5, .my-xl-n5 {
                margin-bottom: -3rem !important;
            }
            .ml-xl-n5, .mx-xl-n5 {
                margin-left: -3rem !important;
            }
            .m-xl-auto {
                margin: auto !important;
            }
            .mt-xl-auto, .my-xl-auto {
                margin-top: auto !important;
            }
            .mr-xl-auto, .mx-xl-auto {
                margin-right: auto !important;
            }
            .mb-xl-auto, .my-xl-auto {
                margin-bottom: auto !important;
            }
            .ml-xl-auto, .mx-xl-auto {
                margin-left: auto !important;
            }
        }
        .text-monospace {
            font-family: SFMono-Regular,Menlo,Monaco,Consolas,"Liberation Mono","Courier New",monospace !important;
        }
        .text-justify {
            text-align: justify !important;
        }
        .text-wrap {
            white-space: normal !important;
        }
        .text-nowrap {
            white-space: nowrap !important;
        }
        .text-truncate {
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap;
        }
        .text-left {
            text-align: left !important;
        }
        .text-right {
            text-align: right !important;
        }
        .text-center {
            text-align: center !important;
        }
        @media (min-width:576px) {
            .text-sm-left {
                text-align: left !important;
            }
            .text-sm-right {
                text-align: right !important;
            }
            .text-sm-center {
                text-align: center !important;
            }
        }
        @media (min-width:768px) {
            .text-md-left {
                text-align: left !important;
            }
            .text-md-right {
                text-align: right !important;
            }
            .text-md-center {
                text-align: center !important;
            }
        }
        @media (min-width:992px) {
            .text-lg-left {
                text-align: left !important;
            }
            .text-lg-right {
                text-align: right !important;
            }
            .text-lg-center {
                text-align: center !important;
            }
        }
        @media (min-width:1200px) {
            .text-xl-left {
                text-align: left !important;
            }
            .text-xl-right {
                text-align: right !important;
            }
            .text-xl-center {
                text-align: center !important;
            }
        }
        .text-lowercase {
            text-transform: lowercase !important;
        }
        .text-uppercase {
            text-transform: uppercase !important;
        }
        .text-capitalize {
            text-transform: capitalize !important;
        }
        .font-weight-light {
            font-weight: 300 !important;
        }
        .font-weight-lighter {
            font-weight: lighter !important;
        }
        .font-weight-normal {
            font-weight: 400 !important;
        }
        .font-weight-bold {
            font-weight: 700 !important;
        }
        .font-weight-bolder {
            font-weight: bolder !important;
        }
        .font-italic {
            font-style: italic !important;
        }
        .text-white {
            color: #fff !important;
        }
        .text-primary {
            color: #007bff !important;
        }
        a.text-primary:focus, a.text-primary:hover {
            color: #0056b3 !important;
        }
        .text-secondary {
            color: #6c757d !important;
        }
        a.text-secondary:focus, a.text-secondary:hover {
            color: #494f54 !important;
        }
        .text-success {
            color: #28a745 !important;
        }
        a.text-success:focus, a.text-success:hover {
            color: #19692c !important;
        }
        .text-info {
            color: #17a2b8 !important;
        }
        a.text-info:focus, a.text-info:hover {
            color: #0f6674 !important;
        }
        .text-warning {
            color: #ffc107 !important;
        }
        a.text-warning:focus, a.text-warning:hover {
            color: #ba8b00 !important;
        }
        .text-danger {
            color: #dc3545 !important;
        }
        a.text-danger:focus, a.text-danger:hover {
            color: #a71d2a !important;
        }
        .text-light {
            color: #f8f9fa !important;
        }
        a.text-light:focus, a.text-light:hover {
            color: #cbd3da !important;
        }
        .text-dark {
            color: #343a40 !important;
        }
        a.text-dark:focus, a.text-dark:hover {
            color: #121416 !important;
        }
        .text-body {
            color: #212529 !important;
        }
        .text-muted {
            color: #6c757d !important;
        }
        .text-black-50 {
            color: rgba(0,0,0,.5) !important;
        }
        .text-white-50 {
            color: rgba(255,255,255,.5) !important;
        }
        .text-hide {
            font: 0/0 a;
            color: transparent;
            text-shadow: none;
            background-color: transparent;
            border: 0;
        }
        .text-decoration-none {
            text-decoration: none !important;
        }
        .text-break {
            word-break: break-word !important;
            overflow-wrap: break-word !important;
        }
        .text-reset {
            color: inherit !important;
        }
        .visible {
            visibility: visible !important;
        }
        .invisible {
            visibility: hidden !important;
        }
        @media print {
            *, ::after, ::before {
                text-shadow: none !important;
                box-shadow: none !important;
            }
            a:not(.btn) {
                text-decoration: underline;
            }
            abbr[title]::after {
                content: " (" attr(title) ")";
            }
            pre {
                white-space: pre-wrap !important;
            }
            blockquote, pre {
                border: 1px solid #adb5bd;
                page-break-inside: avoid;
            }
            thead {
                display: table-header-group;
            }
            img, tr {
                page-break-inside: avoid;
            }
            h2, h3, p {
                orphans: 3;
                widows: 3;
            }
            h2, h3 {
                page-break-after: avoid;
            }
            @page {
                size: a3;
            }
            body {
                min-width: 992px !important;
            }
            .container {
                min-width: 992px !important;
            }
            .navbar {
                display: none;
            }
            .badge {
                border: 1px solid #000;
            }
            .table {
                border-collapse: collapse !important;
            }
                .table td, .table th {
                    background-color: #fff !important;
                }
            .table-bordered td, .table-bordered th {
                border: 1px solid #dee2e6 !important;
            }
            .table-dark {
                color: inherit;
            }
                .table-dark tbody + tbody, .table-dark td, .table-dark th, .table-dark thead th {
                    border-color: #dee2e6;
                }
            .table .thead-dark th {
                color: inherit;
                border-color: #dee2e6;
            }
        }
    </style>
    <style>
        html,
        body {
            height: 100%;
            font-family: "Mulish", sans-serif;
            -webkit-font-smoothing: antialiased;
            background: #0b0c2a;
        }
        h1,
        h2,
        h3,
        h4,
        h5,
        h6 {
            margin: 0;
            color: #111111;
            font-weight: 400;
            font-family: "Mulish", sans-serif;
        }
        h1 {
            text-align: center;
            font-size: 50px;
            color: white;
            line-height: 50px;
            
            font-weight: bold;
        }
        h2 {
            font-size: 36px;
        }
        h3 {
            font-size: 30px;
        }
        h4 {
            font-size: 24px;
        }
        h5 {
            font-size: 18px;
        }
        h6 {
            font-size: 16px;
        }
        p {
            font-size: 15px;
            font-family: "Mulish", sans-serif;
            color: #3d3d3d;
            font-weight: 400;
            line-height: 25px;
            margin: 0 0 15px 0;
        }
        img {
            max-width: 100%;
        }
        input:focus,
        select:focus,
        button:focus,
        textarea:focus {
            outline: none;
        }
        a:hover,
        a:focus {
            text-decoration: none;
            outline: none;
            color: #ffffff;
        }
        ul,
        ol {
            padding: 0;
            margin: 0;
        }
        /*---------------------
          Helper CSS
        -----------------------*/
        .section-title {
            margin-bottom: 30px;
        }
            .section-title h4,
            .section-title h5 {
                color: #ffffff;
                font-weight: 600;
                line-height: 21px;
                text-transform: uppercase;
                padding-left: 20px;
                position: relative;
                font-family: "Oswald", sans-serif;
            }
                .section-title h4:after,
                .section-title h5:after {
                    position: absolute;
                    left: 0;
                    top: -6px;
                    height: 32px;
                    width: 4px;
                    background: #e53637;
                    content: "";
                }
        .set-bg {
            background-repeat: no-repeat;
            background-size: cover;
            background-position: top center;
        }
        .spad {
            padding-top: 100px;
            padding-bottom: 100px;
        }
        .text-white h1,
        .text-white h2,
        .text-white h3,
        .text-white h4,
        .text-white h5,
        .text-white h6,
        .text-white p,
        .text-white span,
        .text-white li,
        .text-white a {
            color: #fff;
        }
        /* buttons */
        .primary-btn {
            display: inline-block;
            font-size: 13px;
            font-weight: 700;
            text-transform: uppercase;
            color: #ffffff;
            letter-spacing: 2px;
        }
            .primary-btn span {
                font-size: 18px;
                margin-left: 5px;
                position: relative;
                top: 3px;
            }
        .site-btn {
            font-size: 13px;
            color: #ffffff;
            background: #e53637;
            font-weight: 700;
            border: none;
            border-radius: 2px;
            letter-spacing: 2px;
            text-transform: uppercase;
            display: inline-block;
            padding: 12px 30px;
        }
        /* Preloder */
        #preloder {
            position: fixed;
            width: 100%;
            height: 100%;
            top: 0;
            left: 0;
            z-index: 999999;
            background: #000;
        }
        .loader {
            width: 40px;
            height: 40px;
            position: absolute;
            top: 50%;
            left: 50%;
            margin-top: -13px;
            margin-left: -13px;
            border-radius: 60px;
            animation: loader 0.8s linear infinite;
            -webkit-animation: loader 0.8s linear infinite;
        }
        @keyframes loader {
            0% {
                -webkit-transform: rotate(0deg);
                transform: rotate(0deg);
                border: 4px solid #f44336;
                border-left-color: transparent;
            }
            50% {
                -webkit-transform: rotate(180deg);
                transform: rotate(180deg);
                border: 4px solid #673ab7;
                border-left-color: transparent;
            }
            100% {
                -webkit-transform: rotate(360deg);
                transform: rotate(360deg);
                border: 4px solid #f44336;
                border-left-color: transparent;
            }
        }
        @-webkit-keyframes loader {
            0% {
                -webkit-transform: rotate(0deg);
                border: 4px solid #f44336;
                border-left-color: transparent;
            }
            50% {
                -webkit-transform: rotate(180deg);
                border: 4px solid #673ab7;
                border-left-color: transparent;
            }
            100% {
                -webkit-transform: rotate(360deg);
                border: 4px solid #f44336;
                border-left-color: transparent;
            }
        }
        .spacial-controls {
            position: fixed;
            width: 111px;
            height: 91px;
            top: 0;
            right: 0;
            z-index: 999;
        }
            .spacial-controls .search-switch {
                display: block;
                height: 100%;
                padding-top: 30px;
                background: #323232;
                text-align: center;
                cursor: pointer;
            }
        .search-model {
            display: none;
            position: fixed;
            width: 100%;
            height: 100%;
            left: 0;
            top: 0;
            background: #000;
            z-index: 99999;
        }
        .search-model-form {
            padding: 0 15px;
        }
            .search-model-form input {
                width: 500px;
                font-size: 40px;
                border: none;
                border-bottom: 2px solid #333;
                background: 0 0;
                color: #999;
            }
        .search-close-switch {
            position: absolute;
            width: 50px;
            height: 50px;
            background: #333;
            color: #fff;
            text-align: center;
            border-radius: 50%;
            font-size: 28px;
            line-height: 28px;
            top: 30px;
            cursor: pointer;
            display: -webkit-box;
            display: -ms-flexbox;
            display: flex;
            -webkit-box-align: center;
            -ms-flex-align: center;
            align-items: center;
            -webkit-box-pack: center;
            -ms-flex-pack: center;
            justify-content: center;
        }
        /*---------------------
          Header
        -----------------------*/
        .header {
            background: #070720;
        }
        .header__logo {
            padding: 20px 0 17px;
        }
            .header__logo a {
                display: inline-block;
            }
        .header__menu {
            text-align: center;
        }
            .header__menu ul li {
                list-style: none;
                display: inline-block;
                position: relative;
                margin-right: 16px;
            }
                .header__menu ul li.active a {
                    background: #e53637;
                    color: #ffffff;
                }
                .header__menu ul li:hover a {
                    color: #ffffff;
                }
                .header__menu ul li:hover .dropdown {
                    top: 62px;
                    opacity: 1;
                    visibility: visible;
                }
                    .header__menu ul li:hover .dropdown li a {
                        background: transparent;
                    }
                .header__menu ul li:last-child {
                    margin-right: 0;
                }
                .header__menu ul li .dropdown {
                    position: absolute;
                    left: 0;
                    top: 82px;
                    width: 150px;
                    background: #ffffff;
                    text-align: left;
                    padding: 5px 0;
                    z-index: 9;
                    opacity: 0;
                    visibility: hidden;
                    -webkit-transition: all, 0.3s;
                    -o-transition: all, 0.3s;
                    transition: all, 0.3s;
                }
                    .header__menu ul li .dropdown li {
                        display: block;
                        margin-right: 0;
                    }
                        .header__menu ul li .dropdown li a {
                            font-size: 14px;
                            color: #111111;
                            font-weight: 500;
                            padding: 5px 20px;
                        }
                .header__menu ul li a {
                    font-size: 15px;
                    color: #b7b7b7;
                    display: block;
                    font-weight: 700;
                    -webkit-transition: all, 0.5s;
                    -o-transition: all, 0.5s;
                    transition: all, 0.5s;
                    padding: 20px;
                }
                    .header__menu ul li a span {
                        position: relative;
                        font-size: 17px;
                        top: 2px;
                    }
        .header__right {
            text-align: right;
            padding: 20px 0 15px;
        }
            .header__right a {
                display: inline-block;
                font-size: 18px;
                color: #ffffff;
                margin-right: 30px;
            }
                .header__right a:last-child {
                    margin-right: 0;
                }
        .slicknav_menu {
            display: none;
        }
        /*---------------------
          Hero
        -----------------------*/
        .hero {
            padding-top: 50px;
        }
        .hero__items {
            padding: 250px 0 42px 50px;
            border-radius: 5px;
        }
        .hero__text {
            position: relative;
            z-index: 9;
        }
            .hero__text .label {
                font-size: 13px;
                color: #e53637;
                background: #ffffff;
                padding: 5px 14px 3px;
                display: inline-block;
                position: relative;
                top: -100px;
                opacity: 0;
                -webkit-transition: all, 0.2s;
                -o-transition: all, 0.2s;
                transition: all, 0.2s;
            }
            .hero__text h2 {
                color: #ffffff;
                font-size: 42px;
                font-family: "Oswald", sans-serif;
                font-weight: 700;
                line-height: 52px;
                margin-top: 35px;
                margin-bottom: 8px;
                position: relative;
                top: -100px;
                opacity: 0;
                -webkit-transition: all, 0.4s;
                -o-transition: all, 0.4s;
                transition: all, 0.4s;
            }
            .hero__text p {
                color: #ffffff;
                font-size: 16px;
                margin-bottom: 40px;
                position: relative;
                top: -100px;
                opacity: 0;
                -webkit-transition: all, 0.6s;
                -o-transition: all, 0.6s;
                transition: all, 0.6s;
            }
            .hero__text a {
                position: relative;
                top: -100px;
                opacity: 0;
                -webkit-transition: all, 0.8s;
                -o-transition: all, 0.8s;
                transition: all, 0.8s;
            }
                .hero__text a span {
                    font-size: 13px;
                    color: #ffffff;
                    background: #e53637;
                    display: inline-block;
                    font-weight: 700;
                    letter-spacing: 2px;
                    text-transform: uppercase;
                    padding: 14px 20px;
                    border-radius: 4px 0 0 4px;
                    margin-right: 1px;
                }
                .hero__text a i {
                    font-size: 20px;
                    display: inline-block;
                    background: #e53637;
                    padding: 11px 5px 16px 8px;
                    color: #ffffff;
                    border-radius: 0 4px 4px 0;
                }
        .hero__slider.owl-carousel .owl-item.active .hero__text .label {
            top: 0;
            opacity: 1;
        }
        .hero__slider.owl-carousel .owl-item.active .hero__text h2 {
            top: 0;
            opacity: 1;
        }
        .hero__slider.owl-carousel .owl-item.active .hero__text p {
            top: 0;
            opacity: 1;
        }
        .hero__slider.owl-carousel .owl-item.active .hero__text a {
            top: 0;
            opacity: 1;
        }
        .hero__slider.owl-carousel .owl-dots {
            position: absolute;
            left: 0;
            bottom: 10px;
            width: 100%;
            text-align: center;
        }
            .hero__slider.owl-carousel .owl-dots button {
                height: 8px;
                width: 8px;
                background: #b7b7b7;
                border-radius: 50%;
                margin-right: 10px;
            }
                .hero__slider.owl-carousel .owl-dots button.active {
                    background: #ffffff;
                }
                .hero__slider.owl-carousel .owl-dots button:last-child {
                    margin-right: 0;
                }
        .hero__slider.owl-carousel .owl-nav button {
            font-size: 36px;
            height: 66px;
            width: 66px;
            background: #0b0c2a;
            line-height: 66px;
            text-align: center;
            color: #ffffff;
            -webkit-transform: rotate(45deg);
            -ms-transform: rotate(45deg);
            transform: rotate(45deg);
            position: relative;
            z-index: 1;
            position: absolute;
            left: -33px;
            top: 50%;
            margin-top: -47px;
        }
            .hero__slider.owl-carousel .owl-nav button.owl-next {
                left: auto;
                right: -33px;
            }
            .hero__slider.owl-carousel .owl-nav button:after {
                position: absolute;
                top: 6px;
                left: 0;
                right: 0;
                height: 54px;
                width: 54px;
                background: rgba(255, 255, 255, 0.1);
                content: "";
                z-index: -1;
                margin: 0 auto;
            }
            .hero__slider.owl-carousel .owl-nav button span {
                -webkit-transform: rotate(-45deg);
                -ms-transform: rotate(-45deg);
                transform: rotate(-45deg);
                display: block;
                z-index: 1;
            }
        /*---------------------
          Product
        -----------------------*/
        .product {
            padding-bottom: 60px;
            padding-top: 80px;
        }
        .product-page {
            padding-top: 60px;
        }
        .btn__all {
            text-align: right;
            margin-bottom: 30px;
        }
        .trending__product {
            margin-bottom: 50px;
        }
        .popular__product {
            margin-bottom: 50px;
        }
        .recent__product {
            margin-bottom: 50px;
        }
        .product__item {
            margin-bottom: 30px;
        }
        .product__item__pic {
            height: 325px;
            position: relative;
            border-radius: 5px;
        }
            .product__item__pic .ep {
                font-size: 13px;
                color: #ffffff;
                background: #e53637;
                display: inline-block;
                padding: 2px 12px;
                border-radius: 4px;
                position: absolute;
                left: 10px;
                top: 10px;
            }
            .product__item__pic .comment {
                font-size: 13px;
                color: #ffffff;
                background: #3d3d3d;
                display: inline-block;
                padding: 2px 10px;
                border-radius: 4px;
                position: absolute;
                left: 10px;
                bottom: 10px;
            }
            .product__item__pic .view {
                font-size: 13px;
                color: #ffffff;
                background: #3d3d3d;
                display: inline-block;
                padding: 2px 10px;
                border-radius: 4px;
                position: absolute;
                right: 10px;
                bottom: 10px;
            }
        .product__item__text {
            padding-top: 20px;
        }
            .product__item__text ul {
                margin-bottom: 10px;
            }
                .product__item__text ul li {
                    list-style: none;
                    font-size: 10px;
                    color: #ffffff;
                    font-weight: 700;
                    padding: 1px 10px;
                    background: rgba(255, 255, 255, 0.2);
                    border-radius: 50px;
                    display: inline-block;
                }
            .product__item__text h5 a {
                color: #ffffff;
                font-weight: 700;
                line-height: 26px;
            }
        .product__sidebar .section-title h5 {
            color: #ffffff;
            font-weight: 600;
            font-family: "Oswald", sans-serif;
            line-height: 21px;
            text-transform: uppercase;
            padding-left: 20px;
            position: relative;
        }
            .product__sidebar .section-title h5:after {
                position: absolute;
                left: 0;
                top: -6px;
                height: 32px;
                width: 4px;
                background: #e53637;
                content: "";
            }
        .product__sidebar__view {
            position: relative;
            margin-bottom: 80px;
        }
            .product__sidebar__view .filter__controls {
                position: absolute;
                right: 0;
                top: -5px;
            }
                .product__sidebar__view .filter__controls li {
                    list-style: none;
                    font-size: 13px;
                    color: #b7b7b7;
                    display: inline-block;
                    margin-right: 7px;
                    cursor: pointer;
                }
                    .product__sidebar__view .filter__controls li.active {
                        color: #ffffff;
                    }
                    .product__sidebar__view .filter__controls li:last-child {
                        margin-right: 0;
                    }
        .product__sidebar__view__item {
            height: 190px;
            position: relative;
            border-radius: 5px;
            margin-bottom: 20px;
        }
            .product__sidebar__view__item .ep {
                font-size: 13px;
                color: #ffffff;
                background: #e53637;
                display: inline-block;
                padding: 2px 12px;
                border-radius: 4px;
                position: absolute;
                left: 10px;
                top: 10px;
            }
            .product__sidebar__view__item .view {
                font-size: 13px;
                color: #ffffff;
                background: #3d3d3d;
                display: inline-block;
                padding: 2px 10px;
                border-radius: 4px;
                position: absolute;
                right: 10px;
                top: 10px;
            }
            .product__sidebar__view__item h5 {
                position: absolute;
                left: 0;
                bottom: 25px;
                width: 100%;
                padding: 0 30px 0 20px;
            }
                .product__sidebar__view__item h5 a {
                    color: #ffffff;
                    font-weight: 700;
                    line-height: 26px;
                }
        .product__sidebar__comment {
            margin-bottom: 35px;
        }
        .product__sidebar__comment__item {
            margin-bottom: 20px;
            overflow: hidden;
        }
        .product__sidebar__comment__item__pic {
            float: left;
            margin-right: 15px;
        }
        .product__sidebar__comment__item__text {
            overflow: hidden;
        }
            .product__sidebar__comment__item__text ul {
                margin-bottom: 10px;
            }
                .product__sidebar__comment__item__text ul li {
                    list-style: none;
                    font-size: 10px;
                    color: #ffffff;
                    font-weight: 700;
                    padding: 1px 10px;
                    background: rgba(255, 255, 255, 0.2);
                    border-radius: 50px;
                    display: inline-block;
                }
            .product__sidebar__comment__item__text h5 {
                margin-bottom: 10px;
            }
                .product__sidebar__comment__item__text h5 a {
                    color: #ffffff;
                    font-weight: 700;
                    line-height: 26px;
                }
            .product__sidebar__comment__item__text span {
                display: block;
                font-size: 13px;
                color: #b7b7b7;
            }
        .product__page__title {
            border-bottom: 2px solid rgba(255, 255, 255, 0.2);
            padding-bottom: 10px;
            margin-bottom: 30px;
        }
            .product__page__title .section-title {
                margin-bottom: 0;
            }
            .product__page__title .product__page__filter {
                text-align: right;
            }
                .product__page__title .product__page__filter p {
                    color: #ffffff;
                    display: inline-block;
                    margin-bottom: 0;
                    margin-right: 16px;
                }
                .product__page__title .product__page__filter .nice-select {
                    float: none;
                    display: inline-block;
                    font-size: 15px;
                    color: #3d3d3d;
                    font-weight: 700;
                    border-radius: 0;
                    padding-left: 15px;
                    padding-right: 40px;
                    height: 32px;
                    line-height: 32px;
                }
                    .product__page__title .product__page__filter .nice-select:after {
                        border-bottom: 2px solid #111;
                        border-right: 2px solid #111;
                        height: 8px;
                        top: 47%;
                        width: 8px;
                        right: 15px;
                    }
                    .product__page__title .product__page__filter .nice-select .list {
                        margin-top: 0;
                        border-radius: 0;
                    }
        .product__pagination {
            padding-top: 15px;
        }
            .product__pagination a {
                display: inline-block;
                font-size: 15px;
                color: #b7b7b7;
                font-weight: 600;
                height: 50px;
                width: 50px;
                border: 1px solid transparent;
                border-radius: 50%;
                line-height: 48px;
                text-align: center;
                -webkit-transition: all, 0.3s;
                -o-transition: all, 0.3s;
                transition: all, 0.3s;
            }
                .product__pagination a:hover {
                    color: #ffffff;
                }
                .product__pagination a.current-page {
                    border: 1px solid #ffffff;
                }
                .product__pagination a i {
                    color: #b7b7b7;
                    font-size: 15px;
                }
        /*---------------------
          Anime Details
        -----------------------*/
        .anime-details {
            padding-top: 60px;
        }
        .anime__details__content {
            margin-bottom: 65px;
        }
        .anime__details__text {
            position: relative;
        }
            .anime__details__text p {
                color: #b7b7b7;
                font-size: 18px;
                line-height: 30px;
            }
        .anime__details__pic {
            height: 440px;
            border-radius: 5px;
            position: relative;
        }
            .anime__details__pic .comment {
                font-size: 13px;
                color: #ffffff;
                background: #3d3d3d;
                display: inline-block;
                padding: 2px 10px;
                border-radius: 4px;
                position: absolute;
                left: 10px;
                bottom: 25px;
            }
            .anime__details__pic .view {
                font-size: 13px;
                color: #ffffff;
                background: #3d3d3d;
                display: inline-block;
                padding: 2px 10px;
                border-radius: 4px;
                position: absolute;
                right: 10px;
                bottom: 25px;
            }
        .anime__details__title {
            margin-bottom: 20px;
        }
            .anime__details__title h3 {
                color: #ffffff;
                font-weight: 700;
                margin-bottom: 13px;
            }
            .anime__details__title span {
                font-size: 15px;
                color: #b7b7b7;
                display: block;
            }
        .anime__details__rating {
            text-align: center;
            position: absolute;
            right: 0;
            top: 0;
        }
            .anime__details__rating .rating i {
                font-size: 24px;
                color: #e89f12;
                display: inline-block;
            }
            .anime__details__rating span {
                display: block;
                font-size: 18px;
                color: #b7b7b7;
            }
        .anime__details__widget {
            margin-bottom: 15px;
        }
            .anime__details__widget ul {
                margin-bottom: 20px;
            }
                .anime__details__widget ul li {
                    list-style: none;
                    font-size: 15px;
                    color: #ffffff;
                    line-height: 30px;
                    position: relative;
                    padding-left: 18px;
                }
                    .anime__details__widget ul li:before {
                        position: absolute;
                        left: 0;
                        top: 12px;
                        height: 6px;
                        width: 6px;
                        background: #b7b7b7;
                        content: "";
                    }
                    .anime__details__widget ul li span {
                        color: #b7b7b7;
                        width: 115px;
                        display: inline-block;
                    }
        .anime__details__btn .follow-btn {
            font-size: 13px;
            color: #ffffff;
            background: #e53637;
            display: inline-block;
            font-weight: 700;
            letter-spacing: 2px;
            text-transform: uppercase;
            padding: 14px 20px;
            border-radius: 4px;
            margin-right: 11px;
        }
        .anime__details__btn .watch-btn span {
            font-size: 13px;
            color: #ffffff;
            background: #e53637;
            display: inline-block;
            font-weight: 700;
            letter-spacing: 2px;
            text-transform: uppercase;
            padding: 14px 20px;
            border-radius: 4px 0 0 4px;
            margin-right: 1px;
        }
        .anime__details__btn .watch-btn i {
            font-size: 20px;
            display: inline-block;
            background: #e53637;
            padding: 11px 5px 16px 8px;
            color: #ffffff;
            border-radius: 0 4px 4px 0;
        }
        .anime__details__review {
            margin-bottom: 55px;
        }
        .anime__review__item {
            overflow: hidden;
            margin-bottom: 15px;
        }
        .anime__review__item__pic {
            float: left;
            margin-right: 20px;
            position: relative;
        }
            .anime__review__item__pic:before {
                position: absolute;
                right: -30px;
                top: 15px;
                border-top: 15px solid transparent;
                border-left: 15px solid #1d1e39;
                content: "";
                -webkit-transform: rotate(45deg);
                -ms-transform: rotate(45deg);
                transform: rotate(45deg);
            }
            .anime__review__item__pic img {
                height: 50px;
                width: 50px;
                border-radius: 50%;
            }
        .anime__review__item__text {
            overflow: hidden;
            background: #1d1e39;
            padding: 18px 30px 16px 20px;
            border-radius: 10px;
        }
            .anime__review__item__text h6 {
                color: #ffffff;
                font-weight: 700;
                margin-bottom: 10px;
            }
                .anime__review__item__text h6 span {
                    color: #b7b7b7;
                    font-weight: 400;
                }
            .anime__review__item__text p {
                color: #b7b7b7;
                line-height: 23px;
                margin-bottom: 0;
            }
        .anime__details__form form textarea {
            width: 100%;
            font-size: 15px;
            color: #b7b7b7;
            padding-left: 20px;
            padding-top: 12px;
            height: 110px;
            border: none;
            border-radius: 5px;
            resize: none;
            margin-bottom: 24px;
        }
        .anime__details__form form button {
            font-size: 11px;
            color: #ffffff;
            font-weight: 700;
            letter-spacing: 2px;
            text-transform: uppercase;
            background: #e53637;
            border: none;
            padding: 10px 15px;
            border-radius: 2px;
        }
        /*---------------------
          Anime Watching
        -----------------------*/
        .anime__video__player {
            margin-bottom: 70px;
        }
            .anime__video__player .plyr--video {
                border-radius: 5px;
                background: transparent;
            }
            .anime__video__player .plyr audio,
            .anime__video__player .plyr iframe,
            .anime__video__player .plyr video {
                width: 102%;
            }
            .anime__video__player .plyr--full-ui.plyr--video .plyr__control--overlaid {
                display: block;
            }
            .anime__video__player .plyr--video .plyr__control.plyr__tab-focus,
            .anime__video__player .plyr--video .plyr__control:hover,
            .anime__video__player .plyr--video .plyr__control[aria-expanded=true] {
                background: transparent;
            }
            .anime__video__player .plyr--video .plyr__controls {
                background: transparent;
            }
            .anime__video__player .plyr--video .plyr__progress__buffer {
                color: transparent;
            }
            .anime__video__player .plyr--full-ui input[type=range] {
                color: #ffffff;
            }
            .anime__video__player .plyr__controls .plyr__controls__item.plyr__progress__container {
                position: absolute;
                left: 26px;
                bottom: 45px;
                width: calc(100% - 60px);
            }
            .anime__video__player .plyr__menu {
                margin-right: 70px;
            }
            .anime__video__player .plyr__controls .plyr__controls__item:first-child {
                position: absolute;
                left: 32px;
                bottom: 8px;
            }
            .anime__video__player .plyr__controls .plyr__controls__item:last-child {
                position: absolute;
                right: 32px;
                bottom: 8px;
            }
            .anime__video__player .plyr__volume {
                position: absolute;
                width: auto;
                left: 76px;
                bottom: 8px;
            }
            .anime__video__player .plyr__controls .plyr__controls__item.plyr__time {
                position: absolute;
                left: 106px;
                bottom: 12px;
            }
            .anime__video__player .plyr__control--overlaid {
                background: transparent;
                background: var(--plyr-video-control-background-hover, var(--plyr-color-main, var(--plyr-color-main, transparent)));
            }
                .anime__video__player .plyr__control--overlaid svg {
                    height: 60px;
                    width: 50px;
                }
        .anime__details__episodes {
            margin-bottom: 35px;
        }
            .anime__details__episodes a {
                display: inline-block;
                font-size: 15px;
                color: #ffffff;
                background: rgba(255, 255, 255, 0.2);
                padding: 10px 20px;
                border-radius: 4px;
                margin-right: 15px;
                margin-bottom: 20px;
                -webkit-transition: all, 0.3s;
                -o-transition: all, 0.3s;
                transition: all, 0.3s;
            }
                .anime__details__episodes a:hover {
                    color: #000000;
                    background: #ffffff;
                }
        /*---------------------
          Breadcrumb
        -----------------------*/
        .breadcrumb-option {
            padding-top: 35px;
        }
        .breadcrumb__links a {
            font-size: 15px;
            color: #ffffff;
            margin-right: 18px;
            display: inline-block;
            position: relative;
        }
            .breadcrumb__links a i {
                margin-right: 5px;
                color: #e53637;
            }
            .breadcrumb__links a:after {
                position: absolute;
                right: -14px;
                top: 0;
                content: "";
                font-family: "FontAwesome";
            }
        .breadcrumb__links span {
            font-size: 15px;
            color: #b7b7b7;
            display: inline-block;
        }
        /*---------------------
            Normal Breadcrumb
        -----------------------*/
        .normal-breadcrumb {
            height: 300px;
            display: -webkit-box;
            display: -ms-flexbox;
            display: flex;
            -webkit-box-align: center;
            -ms-flex-align: center;
            align-items: center;
            -webkit-box-pack: center;
            -ms-flex-pack: center;
            justify-content: center;
        }
        .normal__breadcrumb__text h2 {
            color: #ffffff;
            font-size: 48px;
            font-family: "Oswald", sans-serif;
            font-weight: 700;
            margin-bottom: 22px;
        }
        .normal__breadcrumb__text p {
            color: #ffffff;
            font-size: 24px;
            margin-bottom: 0;
        }
        /*---------------------
            Blog
        -----------------------*/
        .blog {
            padding-top: 70px;
            padding-bottom: 90px;
        }
        .blog__item {
            height: 580px;
            position: relative;
            margin-left: -10px;
            margin-right: -10px;
            margin-bottom: 10px;
        }
            .blog__item.small__item {
                height: 285px;
            }
                .blog__item.small__item .blog__item__text {
                    padding: 0 30px;
                }
                    .blog__item.small__item .blog__item__text p {
                        margin-bottom: 5px;
                    }
                    .blog__item.small__item .blog__item__text h4 a {
                        font-size: 20px;
                        line-height: 30px;
                    }
        .blog__item__text {
            position: absolute;
            left: 0;
            bottom: 25px;
            text-align: center;
            width: 100%;
            padding: 0 105px;
        }
            .blog__item__text p {
                color: #ffffff;
                margin-bottom: 12px;
            }
                .blog__item__text p span {
                    color: #e53637;
                    margin-right: 5px;
                }
            .blog__item__text h4 a {
                color: #ffffff;
                line-height: 34px;
            }
        /*---------------------
          Blog Details
        -----------------------*/
        .blog-details {
            padding-top: 70px;
        }
        .blog__details__title {
            text-align: center;
            margin-bottom: 70px;
        }
            .blog__details__title h6 {
                font-size: 15px;
                color: #ffffff;
                font-weight: 700;
                text-transform: uppercase;
                margin-bottom: 30px;
            }
                .blog__details__title h6 span {
                    color: #b7b7b7;
                    font-weight: 400;
                    text-transform: none;
                }
            .blog__details__title h2 {
                color: #ffffff;
                font-size: 48px;
                font-weight: 700;
                line-height: 60px;
                margin-bottom: 38px;
            }
            .blog__details__title .blog__details__social a {
                display: inline-block;
                font-size: 15px;
                color: #ffffff;
                padding: 16px 35px 14px 20px;
                border-radius: 2px;
                margin-right: 6px;
            }
                .blog__details__title .blog__details__social a:last-child {
                    margin-right: 0;
                }
                .blog__details__title .blog__details__social a.facebook {
                    background: #3b5998;
                }
                .blog__details__title .blog__details__social a.pinterest {
                    background: #ca2027;
                }
                .blog__details__title .blog__details__social a.linkedin {
                    background: #0372b1;
                }
                .blog__details__title .blog__details__social a.twitter {
                    background: #39a1f2;
                }
                .blog__details__title .blog__details__social a i {
                    margin-right: 6px;
                }
        .blog__details__pic {
            margin-bottom: 30px;
        }
            .blog__details__pic img {
                min-width: 100%;
            }
        .blog__details__text {
            margin-bottom: 40px;
        }
            .blog__details__text p {
                color: #ffffff;
                font-size: 17px;
                line-height: 30px;
            }
        .blog__details__item__text {
            margin-bottom: 42px;
        }
            .blog__details__item__text h4 {
                color: #ffffff;
                font-weight: 700;
                margin-bottom: 35px;
            }
            .blog__details__item__text img {
                min-width: 100%;
                margin-bottom: 26px;
            }
            .blog__details__item__text p {
                color: #ffffff;
                font-size: 17px;
                line-height: 30px;
                margin-bottom: 0;
            }
        .blog__details__tags {
            margin-bottom: 60px;
        }
            .blog__details__tags a {
                display: inline-block;
                color: #b7b7b7;
                font-size: 12px;
                font-weight: 700;
                letter-spacing: 2px;
                text-transform: uppercase;
                background: rgba(255, 255, 255, 0.1);
                border-radius: 2px;
                margin-right: 6px;
                padding: 6px 15px;
                margin-bottom: 10px;
            }
                .blog__details__tags a:last-child {
                    margin-right: 0;
                }
        .blog__details__btns {
            border-top: 1px solid rgba(255, 255, 255, 0.2);
            border-bottom: 1px solid rgba(255, 255, 255, 0.2);
            padding: 20px 0 15px;
            margin-bottom: 65px;
        }
        .blog__details__btns__item {
            margin-bottom: 20px;
        }
            .blog__details__btns__item.next__btn {
                text-align: right;
            }
            .blog__details__btns__item h5 a {
                font-size: 17px;
                letter-spacing: 2px;
                color: #ffffff;
            }
                .blog__details__btns__item h5 a span {
                    font-size: 30px;
                    color: #b7b7b7;
                    position: relative;
                    top: 8px;
                }
        .blog__details__comment {
            border-bottom: 1px solid rgba(255, 255, 255, 0.1);
            padding-bottom: 30px;
        }
            .blog__details__comment h4 {
                color: #ffffff;
                font-weight: 700;
                margin-bottom: 26px;
            }
        .blog__details__comment__item {
            margin-bottom: 40px;
            overflow: hidden;
        }
            .blog__details__comment__item.blog__details__comment__item--reply {
                padding-left: 112px;
            }
        .blog__details__comment__item__pic {
            float: left;
            margin-right: 40px;
        }
        .blog__details__comment__item__text {
            overflow: hidden;
        }
            .blog__details__comment__item__text span {
                font-size: 14px;
                color: #b7b7b7;
                display: block;
                margin-bottom: 10px;
            }
            .blog__details__comment__item__text h5 {
                color: #ffffff;
                font-weight: 700;
                margin-bottom: 10px;
            }
            .blog__details__comment__item__text p {
                color: #b7b7b7;
                font-size: 14px;
                line-height: 22px;
                margin-bottom: 25px;
            }
            .blog__details__comment__item__text a {
                display: inline-block;
                color: #ffffff;
                background: rgba(255, 255, 255, 0.1);
                padding: 6px 20px;
                letter-spacing: 2px;
                border-radius: 2px;
                margin-right: 14px;
                -webkit-transition: all, 0.3s;
                -o-transition: all, 0.3s;
                transition: all, 0.3s;
            }
                .blog__details__comment__item__text a:hover {
                    background: #e53637;
                }
        .blog__details__form {
            padding-top: 50px;
        }
            .blog__details__form h4 {
                color: #ffffff;
                font-weight: 700;
                margin-bottom: 26px;
            }
            .blog__details__form form input {
                height: 50px;
                width: 100%;
                background: #ffffff;
                font-size: 15px;
                color: #a6a6a6;
                padding-left: 20px;
                border-radius: 2px;
                border: none;
                margin-bottom: 30px;
            }
                .blog__details__form form input::-webkit-input-placeholder {
                    color: #a6a6a6;
                }
                .blog__details__form form input::-moz-placeholder {
                    color: #a6a6a6;
                }
                .blog__details__form form input:-ms-input-placeholder {
                    color: #a6a6a6;
                }
                .blog__details__form form input::-ms-input-placeholder {
                    color: #a6a6a6;
                }
                .blog__details__form form input::placeholder {
                    color: #a6a6a6;
                }
            .blog__details__form form textarea {
                height: 115px;
                width: 100%;
                background: #ffffff;
                font-size: 15px;
                color: #a6a6a6;
                padding-left: 20px;
                border-radius: 2px;
                padding-top: 12px;
                resize: none;
                border: none;
                margin-bottom: 34px;
            }
                .blog__details__form form textarea::-webkit-input-placeholder {
                    color: #a6a6a6;
                }
                .blog__details__form form textarea::-moz-placeholder {
                    color: #a6a6a6;
                }
                .blog__details__form form textarea:-ms-input-placeholder {
                    color: #a6a6a6;
                }
                .blog__details__form form textarea::-ms-input-placeholder {
                    color: #a6a6a6;
                }
                .blog__details__form form textarea::placeholder {
                    color: #a6a6a6;
                }
        /*---------------------
          Login
        -----------------------*/
        .login {
            padding-top: 130px;
            padding-bottom: 120px;
        }
        .login__form {
            position: relative;
            padding-left: 145px;
        }
            .login__form:after {
                position: absolute;
                right: -14px;
                top: -40px;
                height: 330px;
                width: 1px;
                background: rgba(255, 255, 255, 0.2);
                content: "";
            }
            .login__form h3 {
                color: #ffffff;
                font-weight: 700;
                font-family: "Oswald", sans-serif;
                margin-bottom: 30px;
            }
            .login__form form .input__item {
                position: relative;
                width: 370px;
                margin-bottom: 20px;
            }
                .login__form form .input__item:before {
                    position: absolute;
                    left: 50px;
                    top: 10px;
                    height: 30px;
                    width: 1px;
                    background: #b7b7b7;
                    content: "";
                }
                .login__form form .input__item input {
                    height: 50px;
                    width: 100%;
                    font-size: 15px;
                    color: #b7b7b7;
                    background: #ffffff;
                    border: none;
                    padding-left: 76px;
                }
                    .login__form form .input__item input::-webkit-input-placeholder {
                        color: #b7b7b7;
                    }
                    .login__form form .input__item input::-moz-placeholder {
                        color: #b7b7b7;
                    }
                    .login__form form .input__item input:-ms-input-placeholder {
                        color: #b7b7b7;
                    }
                    .login__form form .input__item input::-ms-input-placeholder {
                        color: #b7b7b7;
                    }
                    .login__form form .input__item input::placeholder {
                        color: #b7b7b7;
                    }
                .login__form form .input__item span {
                    color: #b7b7b7;
                    font-size: 20px;
                    position: absolute;
                    left: 15px;
                    top: 13px;
                }
            .login__form form button {
                border-radius: 0;
                margin-top: 10px;
            }
            .login__form .forget_pass {
                font-size: 15px;
                color: #ffffff;
                display: inline-block;
                position: absolute;
                right: 60px;
                bottom: 12px;
            }
        .login__register {
            padding-left: 30px;
        }
            .login__register h3 {
                color: #ffffff;
                font-weight: 700;
                font-family: "Oswald", sans-serif;
                margin-bottom: 30px;
            }
            .login__register .primary-btn {
                background: #e53637;
                padding: 12px 42px;
            }
        .login__social {
            padding-top: 52px;
        }
        .login__social__links {
            text-align: center;
        }
            .login__social__links span {
                color: #ffffff;
                display: block;
                font-size: 13px;
                font-weight: 700;
                letter-spacing: 2px;
                text-transform: uppercase;
                margin-bottom: 30px;
            }
            .login__social__links ul li {
                list-style: none;
                margin-bottom: 15px;
            }
                .login__social__links ul li:last-child {
                    margin-bottom: 0;
                }
                .login__social__links ul li a {
                    color: #ffffff;
                    display: block;
                    font-size: 13px;
                    font-weight: 700;
                    letter-spacing: 2px;
                    text-transform: uppercase;
                    width: 460px;
                    padding: 14px 0;
                    position: relative;
                    margin: 0 auto;
                }
                    .login__social__links ul li a.facebook {
                        background: #4267b2;
                    }
                    .login__social__links ul li a.google {
                        background: #ff4343;
                    }
                    .login__social__links ul li a.twitter {
                        background: #1da1f2;
                    }
                    .login__social__links ul li a i {
                        font-size: 20px;
                        position: absolute;
                        left: 32px;
                        top: 14px;
                    }
        /*---------------------
          Sign Up
        -----------------------*/
        .signup {
            padding-top: 130px;
            padding-bottom: 150px;
        }
            .signup .login__form:after {
                height: 450px;
            }
            .signup .login__form h5 {
                font-size: 15px;
                color: #ffffff;
                margin-top: 36px;
            }
                .signup .login__form h5 a {
                    color: #e53637;
                    font-weight: 700;
                }
            .signup .login__social__links {
                text-align: left;
                padding-left: 40px;
            }
                .signup .login__social__links h3 {
                    color: #ffffff;
                    font-weight: 700;
                    font-family: "Oswald", sans-serif;
                    margin-bottom: 30px;
                }
                .signup .login__social__links ul li a {
                    margin: 0;
                    text-align: center;
                }
        /*---------------------
          Footer
        -----------------------*/
        .footer {
            background: #070720;
            padding-top: 60px;
            padding-bottom: 40px;
            position: relative;
        }
        .page-up {
            position: absolute;
            left: 50%;
            top: -25px;
            margin-left: -25px;
        }
            .page-up a {
                display: inline-block;
                font-size: 36px;
                color: #ffffff;
                height: 50px;
                width: 50px;
                background: #e53637;
                line-height: 50px;
                text-align: center;
                border-radius: 50%;
            }
                .page-up a span {
                    position: relative;
                    top: 2px;
                    left: -1px;
                }
        .footer__nav {
            text-align: center;
        }
            .footer__nav ul li {
                list-style: none;
                display: inline-block;
                position: relative;
                margin-right: 40px;
            }
                .footer__nav ul li:last-child {
                    margin-right: 0;
                }
                .footer__nav ul li a {
                    font-size: 15px;
                    color: #b7b7b7;
                    display: block;
                    font-weight: 700;
                }
        .footer__copyright__text {
            color: #b7b7b7;
            margin-bottom: 0;
            text-align: right;
        }
            .footer__copyright__text a {
                color: #e53637;
            }
        /*--------------------------------- Responsive Media Quaries -----------------------------*/
        @media only screen and (min-width: 1200px) and (max-width: 1300px) {
            .hero {
                overflow: hidden;
            }
        }
        @media only screen and (min-width: 1200px) {
            .container {
                max-width: 1170px;
            }
        }
        /* Medium Device = 1200px */
        @media only screen and (min-width: 992px) and (max-width: 1199px) {
            .hero {
                overflow: hidden;
            }
            .login__form {
                position: relative;
                padding-left: 32px;
            }
            .login__social__links ul li a {
                width: 380px;
            }
            .blog__item__text {
                padding: 0 50px;
            }
        }
        /* Tablet Device = 768px */
        @media only screen and (min-width: 768px) and (max-width: 991px) {
            .hero {
                overflow: hidden;
            }
            .header {
                position: relative;
            }
                .header .container {
                    position: relative;
                }
            .header__right {
                position: absolute;
                right: 120px;
                top: -42px;
                padding: 0;
            }
            .header__menu {
                display: none;
            }
            .slicknav_menu {
                background: transparent;
                padding: 0;
                display: block;
            }
            .slicknav_nav {
                position: absolute;
                left: 0;
                top: 60px;
                width: 100%;
                background: #ffffff;
                padding: 15px 30px;
                z-index: 9;
            }
                .slicknav_nav ul {
                    margin: 0;
                }
                .slicknav_nav .slicknav_row,
                .slicknav_nav a {
                    padding: 7px 0;
                    margin: 0;
                    color: #111111;
                    font-weight: 600;
                }
            .slicknav_btn {
                border-radius: 0;
                background-color: #222;
                position: absolute;
                right: 0;
                top: 9px;
            }
            .slicknav_nav .slicknav_arrow {
                color: #111111;
            }
            .slicknav_nav .slicknav_row:hover {
                border-radius: 0;
                background: transparent;
                color: #111111;
            }
            .slicknav_nav a:hover {
                border-radius: 0;
                background: transparent;
                color: #111111;
            }
            .product__sidebar {
                padding-top: 50px;
            }
            .footer__logo {
                text-align: center;
                margin-bottom: 20px;
            }
            .footer__nav {
                margin-bottom: 15px;
            }
            .footer__copyright__text {
                text-align: center;
            }
            .anime__details__widget ul li span {
                width: 90px;
            }
            .anime__details__pic {
                margin-bottom: 40px;
            }
            .anime__details__sidebar {
                padding-top: 50px;
            }
            .login__form {
                padding-left: 0;
                margin-bottom: 40px;
            }
                .login__form:after {
                    display: none;
                }
                .login__form form .input__item {
                    width: auto;
                }
            .login__register {
                padding-left: 0;
            }
            .signup .login__social__links {
                padding-left: 0;
            }
        }
        /* Wide Mobile = 480px */
        @media only screen and (max-width: 767px) {
            .hero {
                overflow: hidden;
            }
            .header {
                position: relative;
            }
                .header .container {
                    position: relative;
                }
            .header__right {
                position: absolute;
                right: 120px;
                top: -42px;
                padding: 0;
            }
            .header__menu {
                display: none;
            }
            .slicknav_menu {
                background: transparent;
                padding: 0;
                display: block;
            }
            .slicknav_nav {
                position: absolute;
                left: 0;
                top: 60px;
                width: 100%;
                background: #ffffff;
                padding: 15px 30px;
                z-index: 9;
            }
                .slicknav_nav ul {
                    margin: 0;
                }
                .slicknav_nav .slicknav_row,
                .slicknav_nav a {
                    padding: 7px 0;
                    margin: 0;
                    color: #111111;
                    font-weight: 600;
                }
            .slicknav_btn {
                border-radius: 0;
                background-color: #222;
                position: absolute;
                right: 0;
                top: 9px;
            }
            .slicknav_nav .slicknav_arrow {
                color: #111111;
            }
            .slicknav_nav .slicknav_row:hover {
                border-radius: 0;
                background: transparent;
                color: #111111;
            }
            .slicknav_nav a:hover {
                border-radius: 0;
                background: transparent;
                color: #111111;
            }
            .product__sidebar {
                padding-top: 50px;
            }
            .footer__logo {
                text-align: center;
                margin-bottom: 20px;
            }
            .footer__nav {
                margin-bottom: 15px;
            }
            .footer__copyright__text {
                text-align: center;
            }
            .blog__details__title h2 {
                font-size: 34px;
                line-height: normal;
            }
            .anime__details__pic {
                margin-bottom: 40px;
            }
            .anime__details__sidebar {
                padding-top: 50px;
            }
            .btn__all {
                text-align: left;
            }
            .product__page__title .section-title {
                margin-bottom: 30px;
            }
            .product__page__title .product__page__filter {
                text-align: left;
            }
            .anime__details__rating {
                text-align: left;
                position: relative;
                margin-bottom: 20px;
            }
            .blog__details__social {
                overflow: hidden;
            }
            .blog__details__title .blog__details__social a {
                margin-right: 10px;
                margin-bottom: 10px;
                width: calc(50% - 10px);
                float: left;
            }
            .login__form {
                padding-left: 0;
                margin-bottom: 40px;
            }
                .login__form:after {
                    display: none;
                }
                .login__form form .input__item {
                    width: auto;
                }
            .signup .login__social__links {
                padding-left: 0;
            }
            .login__social__links ul li a {
                width: auto;
            }
            .blog__item__text {
                padding: 0 30px;
            }
            .login__register {
                padding-left: 0;
            }
            .product__sidebar__view .filter__controls li {
                margin-right: 2px;
            }
            .search-model-form input {
                width: 100%;
            }
        }
        /* Small Device = 320px */
        @media only screen and (max-width: 479px) {
            .hero__slider.owl-carousel .owl-nav {
                display: none;
            }
            .hero__items {
                padding: 250px 0 42px 15px;
            }
            .hero__text h2 {
                font-size: 32px;
            }
            .footer__nav ul li {
                margin-right: 10px;
            }
            .anime__details__btn .follow-btn {
                padding: 14px 26px;
                margin-right: 11px;
                margin-bottom: 25px;
            }
            .anime__details__widget ul li span {
                width: 85px;
            }
            .anime__video__player .plyr__volume {
                left: 65px;
            }
            .anime__video__player .plyr__controls .plyr__controls__item.plyr__time {
                left: 95px;
            }
            .anime__video__player .plyr__menu {
                margin-right: 60px;
            }
            .blog__details__title h2 {
                font-size: 30px;
                line-height: normal;
            }
            .blog__details__title .blog__details__social a {
                padding: 16px 25px 14px 20px;
            }
            .blog__details__comment__item.blog__details__comment__item--reply {
                padding-left: 0;
            }
            .blog__details__comment__item__pic {
                margin-right: 25px;
            }
            .blog__details__comment__item__text a {
                margin-right: 6px;
            }
            .login__social__links ul li a i {
                left: 20px;
            }
            .login__form .forget_pass {
                position: relative;
                left: 0;
                bottom: 0;
                margin-top: 25px;
            }
            .header__right a {
                margin-right: 10px;
            }
            .anime__review__item__text h6 span {
                font-size: 12px;
            }
            .anime__review__item__text {
                padding: 18px 20px 20px;
            }
        }
    </style>
</head>
<body>
    <!-- Page Preloder -->
    <div id="preloder" style="display: none;">
        <div class="loader" style="display: none;"></div>
    </div>
    <!-- 헤더 -->
    <header class="header">
        <div class="container">
            <div class="row">
                <div class="col-lg-2">
                    <h1>떼껄룩</h1>  <!--로고 -->
                </div>
                <div class="col-lg-6">
                    <div class="header__nav">
                        <nav class="header__menu mobile-menu"> <!--헤더 중앙 -->
                            <ul>
                                <li class="active"><a href="/GYE">홈페이지</a></li>
                                <li><a href="/GYE/BoxOffice">박스오피스 </a></li>
                                <li><a href="/GYE/recommend">추천영화</a> </li>
                                <li><a href="/GYE/comunity">커뮤니티</a></li>

                            </ul>
                        </nav>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="header__right"> <!--헤더 우측 -->
                      
                        
                    </div>
                </div>
            </div>
            <div id="mobile-menu-wrap"> <!--하단부 -->
                <div class="slicknav_menu">
                    <a href="#" aria-haspopup="true" role="button" tabindex="0" class="slicknav_btn slicknav_collapsed" style="outline: none;"><span class="slicknav_menutxt">MENU</span><span class="slicknav_icon"><span class="slicknav_icon-bar"></span><span class="slicknav_icon-bar"></span><span class="slicknav_icon-bar"></span></span></a><nav class="slicknav_nav slicknav_hidden" aria-hidden="true" role="menu" style="display: none;">
                        <ul>
                            <li class="active"><a href="./index.html" role="menuitem">홈페이지</a></li>
                            <li><a href="./categories.html" role="menuitem">박스오피스 </a></li>
                            <li><a href="./blog.html" role="menuitem">추천영화</a> </li>
                            <li><a href="#" role="menuitem">커뮤니티</a></li>

                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </header>
    <!-- 헤더 끝 -->
    <!-- 영화 세부정보 페이지 -->    <!-- Login Section Begin -->
    <section class="login spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="login__form">
                        <h3>로그인</h3>
                        <form action="login.do" method='post'>
                            <div class="input__item">
                                <input name="ID" type="text" autocomplete='off' placeholder="아이디">
                                <span class="icon_mail"></span>
                            </div>
                            <div class="input__item">
                                <input name="PW" type="text" autocomplete='off' placeholder="비밀번호">
                                <span class="icon_lock"></span>
                            </div>
                            <button type="submit" class="site-btn">로그인</button>
                        </form>
                        <a href="/GYE/find_password" class="forget_pass">비밀번호 찾기</a>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="login__register">
                        <h3>아이디가 없으신가요?</h3>
                        <a href="/GYE/register" class="primary-btn">회원가입</a>
                    </div>
                </div>
            </div>
            <div class="login__social">
                <div class="row d-flex justify-content-center">
                    <div class="col-lg-6">
                        </div>
                    </div>
                </div>
            </div>
    </section>
    <!-- Login Section End -->
    <!-- Footer Section Begin -->
    <footer class="footer">
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="footer__logo">
                        
                    </div>
                </div>
                
            </div>
        </div>
    </footer>
    <!-- Footer Section End -->
    <!-- Search model Begin -->
    <div class="search-model">
        <div class="h-100 d-flex align-items-center justify-content-center">
            <div class="search-close-switch"><i class="icon_close"></i></div>
            <form class="search-model-form">
                <input type="text" id="search-input" placeholder="Search here.....">
            </form>
        </div>
    </div>
    <!-- Search model end -->

