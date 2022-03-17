import { Router } from "express";
import { validateTokenMiddleware } from "../middlewares/validateTokenMiddleware.js";
import { shortenUrl, getOriginalUrl, deleteShortenedUrl} from "../controllers/urlController.js"

const urlRouter = Router();
urlRouter.post('/urls/shorten', validateTokenMiddleware, shortenUrl);
urlRouter.get('/urls/:shortUrl', getOriginalUrl);
urlRouter.delete('/urls/:id', validateTokenMiddleware, deleteShortenedUrl);


export default urlRouter;