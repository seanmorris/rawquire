# rawquire for babel

Import raw plaintext.

## Install with npm:

```sh
$ npm install babel-plugin-macros --save-dev
$ npm install rawquire --save-dev
```

## Add "macros" to your `.babelrc`, or preferred babel config:

```json
{
	"plugins": ["macros"]
}
```

## Import raw text into your javascript:

Call `rawquire` with a file path relative to the current script in the source tree.

Any `rawquire` function calls will be replaced with a string literal containing the text from the file.

### Source code:

`hello-world.js`:
```javascript
import { rawquire } from 'rawquire/rawquire.macro';

const myHtml = rawquire('./hello-world.html');

```
`hello-world.html`:
```html
<h1>Hello, world!</h1>
```

### Compiled code:

`hello-world.js`:
```javascript
const myHtml = "<h1>Hello, world!</h1>";
```
