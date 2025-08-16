# OnionMC

OnionMC is a simple batch script to run a Minecraft server via a TOR hidden service. It automatically cleans the previous hidden service, sets up the TOR configuration, starts TOR, and shows your `.onion` hostname.

## Requirements

- Windows OS  
- TOR installed in the `tor` folder (with `tor.exe`)  
- This batch script in the parent folder of `tor`  

## Usage

1. Place the batch file in the folder above the `tor` folder.  
2. Run the batch file by double-clicking it.  
3. Enter the Minecraft server port when prompted.  
4. The script will:  
   - Clean the existing hidden service  
   - Create/update `torrc` with the given port  
   - Start TOR  
   - Wait for TOR to initialize  
   - Display your `.onion` hostname  
5. Keep the TOR window open for the server to stay accessible. You can close this launcher window.

## Notes

- The hidden service folder is located in the parent directory of the `tor` folder (`..\hidden_service`).  
- Each time the script runs, the hidden service is reset.  

## Example

Enter the Minecraft port: 25565
Cleaning Hidden Service...
Wait for TOR to start

Your hostname:
abcd1234.onion

You can close this window. (Do not close the TOR window for the server to keep running)

## License

Free to use, modify, and distribute.